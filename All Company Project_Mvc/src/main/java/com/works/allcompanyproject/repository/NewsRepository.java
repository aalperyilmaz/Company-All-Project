package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.News;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.lang.NonNull;

import java.util.List;

public interface NewsRepository extends JpaRepository<News,Integer> {
    @Query(value = "select count(News.news_id) from news", nativeQuery = true)
    long countByNewsIdIsAllIgnoreCase();

    List<News> findByNewsStatusAndNewsCategories_NewsCategoryIdAllIgnoreCase(Boolean newsStatus, Integer newsCategoryId);




    List<News> findByOrderByNewsIdAsc(Pageable pageable);

}
