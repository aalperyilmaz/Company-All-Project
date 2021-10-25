package com.works.allcompanyproject.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;
import java.util.Locale;

@Getter
@Setter
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id", nullable = false)
    private Integer productId;

    @ManyToOne
    @JoinTable(name = "product_comp_id")
    private Company company;



    @ManyToMany
    @JoinTable(name = "product_subCat_interlayer", joinColumns = @JoinColumn(name = "prdct_id"), inverseJoinColumns = @JoinColumn(name = "subCat_id"))
 private List<SubCategory> subCategory;


    @ManyToMany
    @JoinTable(name = "product_Catgory_interlayer", joinColumns = @JoinColumn(name = "prdct_id"), inverseJoinColumns = @JoinColumn(name = "Catgry_id"))
  private List<Category> categories;
    @ManyToMany
    @JoinTable(name = "product_Imageurl_interlayer", joinColumns = @JoinColumn(name = "prdct_id"), inverseJoinColumns = @JoinColumn(name = "Img_id"))
    private List<ProductImage> productImages;

   private String productName;

   private String productShortComment;
   private String productLongComment;
   private Integer productPrice;
   private Integer productType;
   private Integer productLatitude;
   private Integer  productLongitude;
   private  String productAddress;
   private Integer productCampaingStatus;
   private String productCampaingName;
   private String productCampaingComment;


}
