package com.works.restapix.repositories;


import com.works.restapix.entity.NewsCategory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsCategoryRepository extends JpaRepository<NewsCategory,Integer> {
}
