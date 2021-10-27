package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Form {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "form_id", nullable = false)
    private Integer formId;

    private String formName;
    private String formDate;
    private String formContent;

    @ManyToOne
    @JoinTable(name = "form_comp_id")
    private Company company;





}
