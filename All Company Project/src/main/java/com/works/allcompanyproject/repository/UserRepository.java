package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.User;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByEmailEqualsAllIgnoreCase(String email);

    User findByEmailEquals(String email);


}
