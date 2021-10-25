package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Announcement;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnnouncementRepository extends JpaRepository<Announcement,Integer> {
}
