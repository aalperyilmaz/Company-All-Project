package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Logger;

import org.springframework.data.jpa.repository.JpaRepository;

public interface LogRepository extends JpaRepository<Logger, Integer> {
}
