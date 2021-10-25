package com.works.allcompanyproject.redisrepository;

import com.works.allcompanyproject.redismodel.RedisSubCategory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RedisSubCategoryRepository extends JpaRepository<RedisSubCategory,String> {
}
