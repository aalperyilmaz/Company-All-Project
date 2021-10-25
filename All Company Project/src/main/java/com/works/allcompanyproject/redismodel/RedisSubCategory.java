package com.works.allcompanyproject.redismodel;

import lombok.Data;
import org.springframework.data.redis.core.RedisHash;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.Id;

@Data
@RedisHash("Subcategory")
public class RedisSubCategory {

    @Id
    private String id;

    private String SubCategoryName;
}
