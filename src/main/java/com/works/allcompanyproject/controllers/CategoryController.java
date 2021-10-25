package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Category;
import com.works.allcompanyproject.entities.SubCategory;
import com.works.allcompanyproject.redismodel.RedisSubCategory;
import com.works.allcompanyproject.redismodel.rediscategory;
import com.works.allcompanyproject.redisrepository.CategoryRedisRepository;
import com.works.allcompanyproject.redisrepository.RedisSubCategoryRepository;
import com.works.allcompanyproject.repository.CategoryRepository;
import com.works.allcompanyproject.repository.SubCategoryRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/category")
public class CategoryController {
final CategoryRepository categoryRepository;
final SubCategoryRepository subCategoryRepository;
final CategoryRedisRepository categoryRedisRepository;
final RedisSubCategoryRepository redisSubCategoryRepository;
    public CategoryController(CategoryRepository categoryRepository, SubCategoryRepository subCategoryRepository, CategoryRedisRepository categoryRedisRepository, RedisSubCategoryRepository redisSubCategoryRepository) {
        this.categoryRepository = categoryRepository;
        this.subCategoryRepository = subCategoryRepository;
        this.categoryRedisRepository = categoryRedisRepository;
        this.redisSubCategoryRepository = redisSubCategoryRepository;
    }

    @GetMapping("")
    public  String categoryModell(){


        return "category";
    }


    @PostMapping("/addCat")
    public String categoryadd(Category category){
        rediscategory rediscat =new rediscategory();
        rediscat.setCategoryName(category.getCategoryName());
        rediscat.setId(UUID.randomUUID().toString());
        try {
            categoryRedisRepository.save(rediscat);
        } catch (Exception e) {
            System.out.println("RedisTrycatch");
        }
        try {
            categoryRepository.save(category);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/category";
    }


    @PostMapping("/addSub")
    public String categorysubbadd(SubCategory subCategory){
        RedisSubCategory rediscat =new RedisSubCategory();
        rediscat.setSubCategoryName(subCategory.getSubCategoryName());
        rediscat.setId(UUID.randomUUID().toString());
        try {
            redisSubCategoryRepository.save(rediscat);
        } catch (Exception e) {
            System.out.println("RedisTrycatch");
        }
        try {
            subCategoryRepository.save(subCategory);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/category";
    }


    @ResponseBody
    @GetMapping("/listCat")
    public Map<String,Object> listCat(){
        Map<String,Object> hm=new LinkedHashMap<>();

        Pageable pageable = PageRequest.of(0, 2);
       Page<Category> ls= categoryRepository.findAll(pageable);


        hm.put("datas",ls);
        return hm;
    }




    @ResponseBody
    @GetMapping("/subCat")
    public Map<String,Object> listSubCat(){
        Map<String,Object> hm=new LinkedHashMap<>();

        Pageable pageable = PageRequest.of(0, 2);
        Page<SubCategory> ls= subCategoryRepository.findAll(pageable);
        List<SubCategory> lst=subCategoryRepository.findAll();

        hm.put("datas",ls);
        return hm;
    }

}
