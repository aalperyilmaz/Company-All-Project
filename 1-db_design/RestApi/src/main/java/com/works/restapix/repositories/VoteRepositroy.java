package com.works.restapix.repositories;

import com.works.restapix.entity.Vote;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VoteRepositroy extends JpaRepository<Vote, Integer> {
}
