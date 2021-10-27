package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Advertisement;
import com.works.allcompanyproject.entities.Company;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AdvertisementRepository extends JpaRepository<Advertisement, Integer> {

    @Query("select a from Advertisement a order by a.advertisementId")
    List<Advertisement> findByOrderByAdvertisementIdAsc(Pageable pageable);

    @Query("select a from Advertisement a where a.company = ?1")
    List<Advertisement> findByCompanyEquals(Company company, Pageable pageable);




}
