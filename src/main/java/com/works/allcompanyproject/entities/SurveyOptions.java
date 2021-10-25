package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class SurveyOptions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "options_id", nullable = false)
    private Integer optionsId;

    private String surveyOptionsTitle;



}
