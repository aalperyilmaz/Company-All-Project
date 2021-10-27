package com.works.restapix.repositories;


import com.works.restapix.entity.ProductImage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductImageRepository extends JpaRepository<ProductImage,Integer> {
}
