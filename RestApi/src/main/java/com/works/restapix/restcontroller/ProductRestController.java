package com.works.restapix.restcontroller;

import com.works.restapix.elasticmodel.ElasticProduct;
import com.works.restapix.elasticrepository.ElasticProductRepository;
import com.works.restapix.entity.Product;
import com.works.restapix.repositories.ProductRepository;
import com.works.restapix.utils.RestEnum;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/product")
public class ProductRestController {
final ProductRepository productRepository;
final ElasticProductRepository elasticProductRepository;
    public ProductRestController(ProductRepository productRepository, ElasticProductRepository elasticProductRepository) {
        this.productRepository = productRepository;
        this.elasticProductRepository = elasticProductRepository;
    }

    @GetMapping("/list")
    public Map<RestEnum, Object> getSProduct() {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        Pageable pageable= PageRequest.of(0,10);
        try {
            Page<Product> ls= productRepository.findByOrderByProductIdDesc(pageable);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }
        return hm;
    }


    @GetMapping("/list/{index}/{index1}")
    public Map<RestEnum, Object> getPageableProduct(@PathVariable String index,@PathVariable String index1) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
    Integer page=Integer.parseInt(index);
    Integer size=Integer.parseInt(index1);
        Pageable pageable= PageRequest.of(page,size);
        try {
            Page<Product> ls= productRepository.findByOrderByProductIdDesc(pageable);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

    return hm;
    }

    @GetMapping("/listElastic/{index}")
    public Map<RestEnum, Object> getPageableElasticProduct(@PathVariable String index) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();


        Pageable pageable= PageRequest.of(0,10);
        try {
            Page<ElasticProduct> ls= elasticProductRepository.findbyProductName(index,pageable);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls.getContent());
            hm.put(RestEnum.totalSize,ls.getTotalPages());
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }


    @GetMapping("/findById/{index}")
    public Map<RestEnum, Object> getSingleProduct(@PathVariable String index) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
      Integer id=  Integer.parseInt(index);
        try {
            Product ls= productRepository.findById(id).get();
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);

        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }
    return hm;
    }

}
