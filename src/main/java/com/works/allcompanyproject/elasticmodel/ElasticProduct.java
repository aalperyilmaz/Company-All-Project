package com.works.allcompanyproject.elasticmodel;

import lombok.Data;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import javax.persistence.Id;
import java.util.UUID;

@Data
@Document(indexName = "product")
public class ElasticProduct {

    @Id
    private String cid = UUID.randomUUID().toString();

    @Field(type = FieldType.Text)
    private String companyName;

    @Field(type = FieldType.Text)
    private String productName;

    @Field(type = FieldType.Text)
    private String productAdress;

}
