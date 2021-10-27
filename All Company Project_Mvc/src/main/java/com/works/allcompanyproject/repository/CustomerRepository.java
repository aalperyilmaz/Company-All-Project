package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Customer;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    List<Customer> findByOrderByCustomerIdAsc(Pageable pageable);

    @Query(value = "select count(customer.customer_id) from customer", nativeQuery = true)
    long countByCustomerIdAllIgnoreCase();




}
