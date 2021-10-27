package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Integer> {
    Page<Product> findByOrderByProductIdDesc(Pageable pageable);

    @Query(value = "select count(product.product_id) from product", nativeQuery = true)
    long countByProductIdAllIgnoreCase();




}
