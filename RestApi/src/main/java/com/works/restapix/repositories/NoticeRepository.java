package com.works.restapix.repositories;


import com.works.restapix.entity.Notice;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoticeRepository extends JpaRepository<Notice,Integer> {
    long countByCompany_CompanyId(Integer companyId);

}
