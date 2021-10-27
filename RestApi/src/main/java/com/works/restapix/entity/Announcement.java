package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Announcement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "announcement_id", nullable = false)
    private Integer announcementId;

    private Integer announcementStatus;

    private String announcementComment;


    private String announcementDate;

    private String announcementTitle;

    @ManyToOne
    @JoinTable(name = "announcement_comp_id")

    private Company company;



}
