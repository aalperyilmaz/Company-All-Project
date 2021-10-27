package com.works.restapix.repositories;


import com.works.restapix.entity.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubCategoryRepository extends JpaRepository<SubCategory,Integer> {
    SubCategory findBySubCategoryName(String subCategoryName);

    long countBySubCategoryId(Integer subCategoryId);





}
