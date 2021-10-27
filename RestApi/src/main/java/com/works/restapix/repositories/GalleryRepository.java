package com.works.restapix.repositories;


import com.works.restapix.entity.Gallery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface GalleryRepository extends JpaRepository<Gallery,Integer> {
    @Query("select g from Gallery g where g.galleryComment = ?1")
    List<Gallery> findByGalleryComment(String galleryComment);

    @Query(value = "SELECT gallery_comment from  gallery GROUP BY gallery_comment",nativeQuery = true)
    List<Object> findByGalleryCommentlist();

    @Query(value = "SELECT gallery.gallery_comment FROM gallery_omp_id INNER JOIN gallery WHERE gallery_omp_id.company_company_id=:companyId   GROUP BY gallery.gallery_comment",nativeQuery = true)
    List<Object> findByGalleryCommentlistNative(@Param("companyId") Integer companyId);

    List<Gallery> findByGalleryCommentEqualsAllIgnoreCase(String galleryComment);

    List<Gallery> findByCompany_CompanyIdAndGalleryComment(Integer companyId, String galleryComment);










}
