package com.works.allcompanyproject.property;

import com.works.allcompanyproject.entities.Category;
import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.ProductImage;
import com.works.allcompanyproject.entities.SubCategory;
import lombok.Data;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class ProductProp {


    private String[] subCategory;


    private String[] categories;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
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
