package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Content {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "content_id", nullable = false)
    private Integer contentId;

    private String contentTitle;
    private String contentShortComment;
    private String contentLongComment;
    private Integer contentStatus;

    @ManyToOne
    @JoinTable(name = "content_comp_id")
    private Company company;



}
