package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.dto.ProductDto;
import com.works.allcompanyproject.dto.ProductManagerDto;
import com.works.allcompanyproject.entities.Product;
import com.works.allcompanyproject.property.ProductProp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/productManager")
public class ProductManagerController {
final ProductManagerDto productManagerDto;
final ProductDto productDto;

    public ProductManagerController(ProductManagerDto productManagerDto, ProductDto productDto) {
        this.productManagerDto = productManagerDto;
        this.productDto = productDto;
    }

    @GetMapping("")
    public String productMngr(){


        return "productManager";
    }



    @ResponseBody
    @GetMapping("/listed")
    public Map<String,Object> productMngrList(){


        return productManagerDto.productList();
    }
    @ResponseBody
    @GetMapping("/pagelisted/{index}/{index2}")
    public Map<String,Object> productMngrList(@PathVariable String index,@PathVariable String index2){


        return productManagerDto.productListPageable(index);
    }

    @ResponseBody
    @GetMapping("/delete/{index}")
    public  Integer deletePrdmngr(@PathVariable String index){
    Integer status=0;
        try {
            productManagerDto.productDelete(index);
            status=20;
        } catch (Exception e) {
            status=0;
        }
        return status;
    }



    @ResponseBody
    @GetMapping("/find/{index}")
    public  Map<String,Object> findProduct(@PathVariable String index){

        return productManagerDto.productSngle(index);
    }


    @PostMapping("/saveAndUpdate")
    public String AddPordc(ProductProp productProp){
        Integer status=0;
        System.out.println(productProp.getProductAddress()+"------------");
        System.out.println(productProp.getSubCategory()+"------sss------");
        System.out.println(productProp.getCategories()+"----------ffff--");
      Product product=productDto.propToProduct(productProp);
        System.out.println(product.getProductId()+"----------PRODUCT IDDDD");

        return "redirect:/productManager";
    }

}
