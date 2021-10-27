package com.works.allcompanyproject.property;

import com.works.allcompanyproject.entities.NewsCategory;
import lombok.Data;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;
import java.util.List;

@Data
public class NewsProperty {

    private String newsTitle;
    private String newsShortComment;
    private String newsLongComment;
    private Boolean newsStatus;

    @Temporal(TemporalType.TIMESTAMP)
    private Date newsAddDate;

    private List<NewsCategory> newsCategories;
}
