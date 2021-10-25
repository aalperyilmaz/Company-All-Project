package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubCategoryRepository extends JpaRepository<SubCategory,Integer> {
    SubCategory findBySubCategoryName(String subCategoryName);
}
