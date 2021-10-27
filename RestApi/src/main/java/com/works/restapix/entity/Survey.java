package com.works.restapix.entity;

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


    @ManyToMany
    @JoinTable(name = "survey_options_id", joinColumns = @JoinColumn(name = "survey_survey_id"), inverseJoinColumns = @JoinColumn(name = "options_options_id"))
    private List<SurveyOptions> surveyOptions;

}
