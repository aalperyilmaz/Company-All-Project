package com.works.restapix.repositories;


import com.works.restapix.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product,Integer> {
    Page<Product> findByOrderByProductIdDesc(Pageable pageable);





}
