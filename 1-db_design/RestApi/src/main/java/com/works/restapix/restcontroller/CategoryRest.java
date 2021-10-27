package com.works.restapix.restcontroller;

import com.works.restapix.repositories.CategoryRepository;
import com.works.restapix.repositories.SubCategoryRepository;
import com.works.restapix.utils.RestEnum;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/category")
public class CategoryRest {
    final CategoryRepository categoryRepository;
    final SubCategoryRepository subCategoryRepository;

    public CategoryRest(CategoryRepository categoryRepository, SubCategoryRepository subCategoryRepository) {
        this.categoryRepository = categoryRepository;
        this.subCategoryRepository = subCategoryRepository;
    }


    @GetMapping("/list")
    public Map<RestEnum, Object> getCategory() {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        hm.put(RestEnum.status,true);
        hm.put(RestEnum.message,subCategoryRepository.findAll());
        hm.put(RestEnum.message_1,categoryRepository.findAll());

        return hm;
    }
}
