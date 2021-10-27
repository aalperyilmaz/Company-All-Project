package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.Vote;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VoteRepository extends JpaRepository<Vote, Integer> {

    @Query("select v from Vote v where v.company = ?1")
    List<Vote> findByCompanyEquals(Company company, Pageable pageable);

}
