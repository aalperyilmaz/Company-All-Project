package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

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
