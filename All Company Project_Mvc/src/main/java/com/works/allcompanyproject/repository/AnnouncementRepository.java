package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Announcement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AnnouncementRepository extends JpaRepository<Announcement,Integer> {
    @Query(value = "select count(announcement.announcement_id) from announcement",nativeQuery = true)
    long countByAnnouncementIdAllIgnoreCase();

    List<Announcement> findByCompany_CompanyId(Integer companyId);
}
