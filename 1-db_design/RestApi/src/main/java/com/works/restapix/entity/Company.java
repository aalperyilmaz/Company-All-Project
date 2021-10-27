package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@Entity
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "company_id", nullable = false)
    private Integer companyId;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String companyName;
   @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String companyAddress;
    private String companyLatitude;
    private String companyLongitude;
    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String companyTel;
    private String companySector;
    private Integer companyStatus;


}
