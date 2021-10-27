package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class SubCategory extends BaseEntitiy<String> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sub_category_id", nullable = false)
    private Integer subCategoryId;

    private String subCategoryName;

}
