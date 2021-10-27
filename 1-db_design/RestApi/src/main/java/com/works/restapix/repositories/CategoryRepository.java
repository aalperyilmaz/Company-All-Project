package com.works.restapix.repositories;


import com.works.restapix.entity.Category;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category,Integer> {
    List<Category> findByOrderByCategoryIdAsc(Pageable pageable);

    Category findByCategoryName(String categoryName);

}
