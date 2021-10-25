package com.works.allcompanyproject.property;

import com.works.allcompanyproject.entities.Company;
import lombok.Data;

import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;

@Data
public class GalleryProp {
    private String galleryName;

    private String galleryComment;
    private String galleryUrl;


}
