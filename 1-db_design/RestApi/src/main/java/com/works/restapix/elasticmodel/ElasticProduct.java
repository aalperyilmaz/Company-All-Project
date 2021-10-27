package com.works.restapix.elasticmodel;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import javax.persistence.*;
import java.util.UUID;


@Data
@Document(indexName = "product")
public class ElasticProduct {

    @Id
    private String pid = UUID.randomUUID().toString();

    @Field(type = FieldType.Text)
    private String companyName;

    @Field(type = FieldType.Text)
    private String productName;

    @Field(type = FieldType.Text)
    private String productAdress;

    @Field(type = FieldType.Text)
    private String dbId;

}
