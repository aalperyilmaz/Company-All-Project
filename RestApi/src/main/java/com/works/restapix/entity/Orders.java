package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "orders_id", nullable = false)
    private Integer ordersId;

@ManyToMany
@JoinTable(name = "prduct_urder_interlayer", joinColumns = @JoinColumn(name = "ordrs_id"), inverseJoinColumns = @JoinColumn(name = "prdct_id"))

    private List<Product> products;


    @ManyToMany
    @JoinTable(name = "orders_customrs_interlayer", joinColumns = @JoinColumn(name = "ordrs_id"), inverseJoinColumns = @JoinColumn(name = "cstmrs_id"))

    private List<Customer>  customers;

    @ManyToOne
    @JoinTable(name = "orders_comp_id")

    private Company company;


    private Integer ordersAmounth;
    private String ordersDate;
    private Double ordersCost;
    private Integer ordersStatus;



}
