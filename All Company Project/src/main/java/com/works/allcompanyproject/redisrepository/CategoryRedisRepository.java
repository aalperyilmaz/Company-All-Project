package com.works.allcompanyproject.redisrepository;

import com.works.allcompanyproject.redismodel.rediscategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.redis.repository.configuration.EnableRedisRepositories;

@EnableRedisRepositories
public interface CategoryRedisRepository extends JpaRepository<rediscategory,String> {
}
