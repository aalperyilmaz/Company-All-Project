package com.works.allcompanyproject.redismodel;

import lombok.Data;
import org.springframework.data.redis.core.RedisHash;

import javax.persistence.Id;
@Data
@RedisHash("Category")
public class rediscategory {
    @Id
    private String id;

    private String categoryName;
}
