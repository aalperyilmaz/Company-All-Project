package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.Notice;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoticeRepository extends JpaRepository<Notice,Integer> {
}
