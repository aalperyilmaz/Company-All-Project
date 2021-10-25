package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Gallery;
import com.works.allcompanyproject.property.GalleryOption;
import com.works.allcompanyproject.property.GalleryProp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GalleryRepository extends JpaRepository<Gallery,Integer> {
    @Query("select g from Gallery g where g.galleryComment = ?1")
    List<Gallery> findByGalleryComment(String galleryComment);

    @Query(value = "SELECT gallery_comment from  gallery GROUP BY gallery_comment",nativeQuery = true)
    List<Object> findByGalleryCommentlist();

    List<Gallery> findByGalleryCommentEqualsAllIgnoreCase(String galleryComment);









}
