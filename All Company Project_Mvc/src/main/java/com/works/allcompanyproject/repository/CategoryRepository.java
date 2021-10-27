package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Category;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category,Integer> {
    List<Category> findByOrderByCategoryIdAsc(Pageable pageable);

    Category findByCategoryName(String categoryName);



}
