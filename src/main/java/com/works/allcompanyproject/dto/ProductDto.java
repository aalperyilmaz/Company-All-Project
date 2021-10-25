package com.works.allcompanyproject.dto;

import com.works.allcompanyproject.entities.Category;
import com.works.allcompanyproject.entities.Product;
import com.works.allcompanyproject.entities.SubCategory;
import com.works.allcompanyproject.property.ProductProp;
import com.works.allcompanyproject.repository.CategoryRepository;
import com.works.allcompanyproject.repository.ProductRepository;
import com.works.allcompanyproject.repository.SubCategoryRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class ProductDto {
final ProductRepository productRepository;
final CategoryRepository categoryRepository;
final SubCategoryRepository subCategoryRepository;
    public ProductDto(ProductRepository productRepository, CategoryRepository categoryRepository, SubCategoryRepository subCategoryRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.subCategoryRepository = subCategoryRepository;
    }

    public Product propToProduct(ProductProp productProp){
        Product product =new Product();
        List<Category> categories=new ArrayList<>();
        List<SubCategory> subCategories = new ArrayList<>();


      List<String> ls= Arrays.asList(productProp.getCategories()) ;
         ls.forEach(item->{

             categories.add(categoryRepository.findByCategoryName(item));
         });

         List<String> lsSub=Arrays.asList(productProp.getSubCategory());
            lsSub.forEach(item->{

             subCategories.add(subCategoryRepository.findBySubCategoryName(item));

            });

            product.setCategories(categories);
            product.setSubCategory(subCategories);
            product.setProductAddress(productProp.getProductAddress());
            product.setProductPrice(productProp.getProductPrice());
            product.setProductName(productProp.getProductName());
            product.setProductType(productProp.getProductType());
            product.setProductLatitude(productProp.getProductLatitude());
            product.setProductLongitude(productProp.getProductLongitude());
            product.setProductLongComment(productProp.getProductLongComment());
            product.setProductShortComment(productProp.getProductShortComment());
            product.setProductCampaingStatus(productProp.getProductCampaingStatus());
            product.setProductCampaingName(productProp.getProductCampaingName());
            product.setProductCampaingComment(productProp.getProductCampaingComment());

        return product;
    }
}
