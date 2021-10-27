package com.works.restapix.restcontroller;

import com.works.restapix.entity.User;
import com.works.restapix.entity.Vote;
import com.works.restapix.repositories.CompanyRepository;
import com.works.restapix.repositories.CustomerRepository;
import com.works.restapix.repositories.ProductRepository;
import com.works.restapix.repositories.VoteRepositroy;
import com.works.restapix.utils.RestEnum;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/vote")
public class VoteRestController {

    final VoteRepositroy voteRepositroy;
    final CompanyRepository companyRepository;
    final ProductRepository productRepository;
    final CustomerRepository customerRepository;


    public VoteRestController(VoteRepositroy voteRepositroy, CompanyRepository companyRepository, ProductRepository productRepository, CustomerRepository customerRepository) {
        this.voteRepositroy = voteRepositroy;
        this.companyRepository = companyRepository;
        this.productRepository = productRepository;
        this.customerRepository = customerRepository;
    }

    @GetMapping("/add/{index}/{index1}/{index2}")
    public Map<RestEnum, Object> voteAdd(@PathVariable String index, @PathVariable String index1, @PathVariable String index2) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        Integer customerid = Integer.parseInt(index);
        Integer productid = Integer.parseInt(index1);
        Integer pointid = Integer.parseInt(index2);

        Vote vote = new Vote();
        try {
            vote.setCustomer(customerRepository.findById(customerid).get());
            vote.setProduct(productRepository.findById(productid).get());
            vote.setCompany(customerRepository.findById(customerid).get().getCompany());
            vote.setVotePoint(pointid);
            voteRepositroy.save(vote);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,vote);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }
}
