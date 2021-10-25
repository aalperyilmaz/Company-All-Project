package com.works.allcompanyproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;


@SpringBootApplication
@EnableElasticsearchRepositories(basePackages = "com.works.allcompanyproject")
public class AllCompanyProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(AllCompanyProjectApplication.class, args);
    }

}
