package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.Survey;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SurveyRepository extends JpaRepository<Survey, Integer> {

    @Query("select s from Survey s where s.company = ?1")
    List<Survey> findByCompanyEquals(Company company, Pageable pageable);

    @Query("select s from Survey s where s.company = ?1 order by s.surveyId DESC")
    List<Survey> findByCompanyEqualsOrderBySurveyIdDesc(Company company);

    @Query("select s from Survey s where s.surveyId = ?1")
    List<Survey> findBySurveyIdEquals(Integer surveyId);



}
