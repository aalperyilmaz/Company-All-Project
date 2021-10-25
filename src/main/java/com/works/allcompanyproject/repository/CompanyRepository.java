package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyRepository extends JpaRepository<Company,Integer> {
}
