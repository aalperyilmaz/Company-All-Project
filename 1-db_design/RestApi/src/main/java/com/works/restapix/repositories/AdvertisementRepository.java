package com.works.restapix.repositories;


import com.works.restapix.entity.Advertisement;
import com.works.restapix.entity.Company;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AdvertisementRepository extends JpaRepository<Advertisement, Integer> {

    @Query("select a from Advertisement a order by a.advertisementId")
    List<Advertisement> findByOrderByAdvertisementIdAsc(Pageable pageable);

    @Query("select a from Advertisement a where a.company = ?1")
    List<Advertisement> findByCompanyEquals(Company company, Pageable pageable);

    @Query("select a from Advertisement a where upper(a.company) = upper(?1)")
    List<Advertisement> findByCompanyEqualsAllIgnoreCase(Company company);



}
