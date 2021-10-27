package com.works.restapix.repositories;


import com.works.restapix.entity.Announcement;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnnouncementRepository extends JpaRepository<Announcement,Integer> {
    List<Announcement> findByCompany_CompanyId(Integer companyId, Pageable pageable);


}
