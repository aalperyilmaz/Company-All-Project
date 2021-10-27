package com.works.allcompanyproject.entities;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "news")
public class News extends BaseEntitiy<String> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "news_id", nullable = false)
    private Integer newsId;

    private String newsTitle;
    private String newsShortComment;
    private String newsLongComment;
    private String newsImageUrl;
    private Boolean newsStatus;

    @Temporal(TemporalType.TIMESTAMP)
    private Date newsAddDate;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinTable(name = "news_comp_id")
    private Company company;


    @ManyToMany(cascade=CascadeType.ALL)
    @JoinTable(name="news_cat_table", joinColumns=@JoinColumn(name="news_id"),
            inverseJoinColumns=@JoinColumn(name="news_category_id"))
    private List<NewsCategory> newsCategories;



}
