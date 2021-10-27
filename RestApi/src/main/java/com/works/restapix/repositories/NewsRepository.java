package com.works.restapix.repositories;


import com.works.restapix.entity.News;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsRepository extends JpaRepository<News,Integer> {
    long countByNewsId(Integer newsId);

}
