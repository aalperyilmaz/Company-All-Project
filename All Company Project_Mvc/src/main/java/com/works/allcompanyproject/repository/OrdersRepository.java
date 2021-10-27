package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.Orders;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrdersRepository extends JpaRepository<Orders, Integer> {
    @Query(value = "select count(orders.orders_id) from orders", nativeQuery = true)
    long countByOrdersIdAllIgnoreCase();


    List<Orders> findByAllIgnoreCaseOrderByOrdersIdAsc(Pageable pageable);

    List<Orders> findByCompany_CompanyId(Integer companyId);



}
