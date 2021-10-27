package com.works.allcompanyproject.dto;

import com.works.allcompanyproject.elstrepository.ElasticProductRepository;
import com.works.allcompanyproject.entities.Product;
import com.works.allcompanyproject.repository.ProductRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductManagerDto {

    final ProductRepository productRepository;
    final ElasticProductRepository elasticProductRepository;
    public ProductManagerDto(ProductRepository productRepository, ElasticProductRepository elasticProductRepository) {
        this.productRepository = productRepository;
        this.elasticProductRepository = elasticProductRepository;
    }


    public Map<String,Object> productList(){
        Map<String,Object> hm=new LinkedHashMap<>();
        Pageable pageable = PageRequest.of(0, 9);

      Page<Product> ls= productRepository.findAll(pageable);
        List<Product> lst=ls.getContent();
        String pageSize= String.valueOf(ls.getTotalPages());
        hm.put("pageSize",pageSize);
        hm.put("datas",lst);

        return hm;
    }



    public Map<String,Object> productListPageable(String pageSize){
        Map<String,Object> hm=new LinkedHashMap<>();
        Integer pSize= Integer.parseInt(pageSize);
        Pageable pageable = PageRequest.of(pSize, 9);

        Page<Product> ls= productRepository.findAll(pageable);
        List<Product> lst=ls.getContent();
        String pageSizez= String.valueOf(ls.getTotalPages());
        hm.put("pageSize",pageSizez);
        hm.put("datas",lst);

        return hm;
    }



    public Map<String,Object> productDelete(String index){
        Map<String,Object> hm=new LinkedHashMap<>();
        productRepository.deleteById(Integer.parseInt(index));
        hm.put("succesDelete",20);
        return hm;
    }



    public Map<String,Object> productSngle(String index){
        Map<String,Object> hm=new LinkedHashMap<>();
      Product product= productRepository.findById(Integer.parseInt(index)).get();
      List<Product> ls = new ArrayList<>();
      ls.add(product);
        hm.put("datas",product);
        hm.put("pageSize","1");
        return hm;
    }

}
