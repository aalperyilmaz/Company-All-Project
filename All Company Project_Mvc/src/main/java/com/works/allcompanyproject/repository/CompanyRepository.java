package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CompanyRepository extends JpaRepository<Company,Integer> {
    @Query(value = "select count(company.company_id) from company",nativeQuery = true)
    long countByCompanyIdAllIgnoreCase();
}
