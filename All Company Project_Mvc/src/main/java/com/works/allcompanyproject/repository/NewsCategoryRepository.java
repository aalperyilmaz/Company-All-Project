package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.NewsCategory;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface NewsCategoryRepository extends JpaRepository<NewsCategory,Integer> {
    @Query(value = "select count(news_category.news_category_id) from news_category", nativeQuery = true)
    long countByNewsCategoryIdAllIgnoreCase();

    List<NewsCategory> findByOrderByNewsCategoryIdAsc(Pageable pageable);







}
