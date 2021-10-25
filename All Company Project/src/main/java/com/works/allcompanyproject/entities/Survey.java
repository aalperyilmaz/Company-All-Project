package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
public class Survey {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "survey_id", nullable = false)
    private Integer surveyId;

    private String surveyTitle;

    @ManyToOne
    @JoinTable(name = "survey_comp_id")
    private Company company;


    @OneToMany
    @JoinTable(name = "survey_Options_id")
    private List<SurveyOptions> surveyOptions;





}
