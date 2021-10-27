package com.works.restapix.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "news")
public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "news_id", nullable = false)
    private Integer newsId;

    private String newsTitle;
    private String newsShortComment;
    private String newsLongComment;
    private  String newsImageUrl;
    private Boolean newsStatus;

    @ManyToOne
    @JoinTable(name = "news_comp_id")

    private Company company;


    @ManyToMany(cascade=CascadeType.ALL)
    @JoinTable(name="news_cat_table", joinColumns=@JoinColumn(name="news_id"),
            inverseJoinColumns=@JoinColumn(name="news_category_id"))
    public List<NewsCategory> newsCategories;



}
