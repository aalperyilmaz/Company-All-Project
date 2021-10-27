package com.works.restapix.elasticrepository;


import com.works.restapix.elasticmodel.ElasticProduct;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.annotations.Query;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;



public interface ElasticProductRepository extends ElasticsearchRepository<ElasticProduct,String> {

    @Query("{\"bool\":{\"must\":[],\"must_not\":[],\"should\":[{\"match\":{\"companyName\":\"?0\"}},{\"match\":{\"productName\":\"?0\"}}]}},\"from\":0,\"size\":10,\"sort\":[],\"aggs\":{}}")
    Page<ElasticProduct> findbyProductName(String name, Pageable pageable );
}
