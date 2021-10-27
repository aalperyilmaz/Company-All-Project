package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity

public class Adress {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "adress_id", nullable = false)
    private Integer adressId;

    private String adressName;

    @ManyToOne
    @JoinTable(name = "adress_customer_id")
    private Customer customer;

}
