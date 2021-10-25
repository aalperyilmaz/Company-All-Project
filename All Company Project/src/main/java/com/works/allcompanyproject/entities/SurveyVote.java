package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class SurveyVote {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "survey_vote_id", nullable = false)
    private Integer surveyVoteId;

    @OneToOne
    private Survey survey;

    @OneToOne
    private Customer customer;

    private Integer vote;


}
