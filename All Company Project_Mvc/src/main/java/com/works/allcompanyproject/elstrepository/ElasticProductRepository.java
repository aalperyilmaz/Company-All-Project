package com.works.allcompanyproject.elstrepository;

import com.works.allcompanyproject.elasticmodel.ElasticProduct;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

public interface ElasticProductRepository extends ElasticsearchRepository<ElasticProduct,String> {
}
