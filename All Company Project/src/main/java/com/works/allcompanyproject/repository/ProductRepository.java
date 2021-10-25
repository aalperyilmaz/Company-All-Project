package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product,Integer> {



}
