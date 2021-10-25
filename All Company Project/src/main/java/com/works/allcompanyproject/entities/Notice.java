package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Notice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "notice_id", nullable = false)
    private Integer noticeId;

    private String noticeTitle;
    private String noticeComment;

    @ManyToOne
    @JoinTable(name = "cnotice_omp_id")
    private Company company;



}
