package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Content;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ContentRepository extends JpaRepository<Content, Integer> {
    @Query(value = "select count(content.content_id) from content", nativeQuery = true)
    long countByContentIdAllIgnoreCase();

    long countByContentStatusAllIgnoreCase(Integer contentStatus);

    List<Content> findByContentStatusAllIgnoreCaseOrderByContentIdAsc(Integer contentStatus, Pageable pageable);

    List<Content> findByOrderByContentIdAsc(Pageable pageable);




}
