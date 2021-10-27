package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Gallery extends BaseEntitiy<String> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "gallery_id", nullable = false)
    private Integer galleryId;

    private String galleryName;
    private boolean galleryStatus;
    private String galleryComment;
    private String galleryUrl;
    @ManyToOne
    @JoinTable(name = "gallery_omp_id")
    private Company company;



}
