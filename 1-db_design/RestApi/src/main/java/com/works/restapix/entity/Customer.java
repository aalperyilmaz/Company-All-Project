package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Customer  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id", nullable = false)
    private Integer customerId;

    private String customerName;
    private String customerSurname;
    private String password;

    @OneToOne
    @JoinTable(name = "customer_comp_id")
    private Company company;

    private String customerMail;
    private Integer customerStatus;


}
