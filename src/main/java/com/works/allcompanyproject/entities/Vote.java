package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Vote {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "vote_id", nullable = false)
    private Integer voteId;

    @ManyToOne
    @JoinTable(name = "vote_comp_id")
    private Company company;

    @OneToOne
    private Product product;


    @OneToOne
    private Customer customer;

    private Integer votePoint;

}
