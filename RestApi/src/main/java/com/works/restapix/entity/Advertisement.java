package com.works.restapix.entity;

import io.swagger.annotations.ApiModel;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@ApiModel(value = "Customer Model", description = "Yeni Müşteri Ekleme için Kullanılır.")
public class Advertisement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "advertisement_id", nullable = false)
    private Integer advertisementId;

    private String advertisementName;
    private String advertisementStartDate;
    private String advertisementEndDate;
    private String advertisementImageUrl;
    private Integer advertisementHeight;
    private Integer advertisementWidth;

    private String advertisementLink;

    private Integer advertisementPresentationWatchSize;


    @ManyToOne
    @JoinTable(name = "advertisement_comp_id")
    private Company company;

}
