package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.dto.ProductDto;
import com.works.allcompanyproject.elasticmodel.ElasticProduct;
import com.works.allcompanyproject.elstrepository.ElasticProductRepository;
import com.works.allcompanyproject.entities.*;
import com.works.allcompanyproject.property.ProductProp;
import com.works.allcompanyproject.repository.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/product")
public class ProductController {
final ProductDto productDto;
final CategoryRepository categoryRepository;
final SubCategoryRepository subCategoryRepository;
final UserRepository userRepository;
final ProductRepository productRepository;
final ProductImageRepository productImageRepository;
final ElasticProductRepository epRepository;

    public ProductController(ProductDto productDto, CategoryRepository categoryRepository, SubCategoryRepository subCategoryRepository, UserRepository userRepository, ProductRepository productRepository, ProductImageRepository productImageRepository, ElasticProductRepository epRepository) {
        this.productDto = productDto;
        this.categoryRepository = categoryRepository;
        this.subCategoryRepository = subCategoryRepository;
        this.userRepository = userRepository;
        this.productRepository = productRepository;
        this.productImageRepository = productImageRepository;

        this.epRepository = epRepository;
    }

    @GetMapping("")
    public  String productModel(Model model){
        List<Category> ls = categoryRepository.findAll();
        List<SubCategory> lst=subCategoryRepository.findAll();
  model.addAttribute("categories",ls);
  model.addAttribute("subcategories",lst);
  model.addAttribute("product",new ProductProp() );
        return "product";
    }
    private final String UPLOAD_DIR =  "src/main/resources/static/uploads/product/";
    long maxFileUploadSize = 20048;

    int sendCount = 0;
    int sendSuccessCount = 0;
    String errorMessage = "";

    @PostMapping("/add")
    public String productAdd(@RequestParam("imageName") MultipartFile[] files, @ModelAttribute("product") @Valid ProductProp productProp, BindingResult bindingResult){

        List<ProductImage> ls = new ArrayList<>();
        if ( files != null && files.length != 0 ) {
            sendCount = files.length;
            for ( MultipartFile file : files ) {

                long fileSizeMB = file.getSize() / 1024;
                if ( fileSizeMB > maxFileUploadSize ) {
                    System.err.println("Dosya boyutu çok büyük Max 2MB");
                    errorMessage = "Dosya boyutu çok büyük Max "+ (maxFileUploadSize / 1024) +"MB olmalıdır";
                }else {
                    String fileName = StringUtils.cleanPath(file.getOriginalFilename());
                    String ext = fileName.substring(fileName.length()-5, fileName.length());
                    String uui = UUID.randomUUID().toString();
                    fileName = uui + ext;
                    try {
                        Path path = Paths.get(UPLOAD_DIR + fileName);
                        Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                        sendSuccessCount += 1;

                        // add database
                      ProductImage img= new ProductImage();
                      img.setProductImageUrl(fileName);

                            ProductImage setImg= productImageRepository.save(img);
                        ls.add(setImg);

                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
            }

            try {
                ElasticProduct elasticProduct=new ElasticProduct();
                Product product= productDto.propToProduct(productProp);
                product.setProductImages(ls);
                String uname = SecurityContextHolder.getContext().getAuthentication().getName();
                User user= userRepository.findByEmailEquals(uname);
                product.setCompany(user.getCompany());
                Product prd= null;
                if (!product.getProductName().equals("")) {
                    prd = productRepository.save(product);
                }
                elasticProduct.setProductName(prd.getProductName());
                elasticProduct.setProductAdress(prd.getProductAddress());
                elasticProduct.setDbId(String.valueOf(prd.getProductId()));
                elasticProduct.setCompanyName(prd.getCompany().getCompanyName());
                try {
                    elasticProduct.setPid(UUID.randomUUID().toString());
                    if (!product.getProductName().equals("")){
                    epRepository.save(elasticProduct);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }else {
            errorMessage = "Lütfen resim seçiniz!";
        }
        return "product";
    }






}
