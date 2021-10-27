package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Adress;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface AdressRepository extends JpaRepository<Adress, Integer> {

//    @Query(value = "select a from Adress a where upper(a.customer.customerId) = upper(?1)", nativeQuery = true)
//    List<Adress> findByCustomer_CustomerIdIsAllIgnoreCase(Integer customerId, Pageable pageable);


}
