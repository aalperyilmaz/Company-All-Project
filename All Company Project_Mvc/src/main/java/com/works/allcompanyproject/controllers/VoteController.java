package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.entities.Vote;
import com.works.allcompanyproject.repository.AdvertisementRepository;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.UserRepository;
import com.works.allcompanyproject.repository.VoteRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/vote")
public class VoteController {

    final AdvertisementRepository advertisementRepository;
    final CompanyRepository companyRepository;
    final VoteRepository voteRepository;
    final UserRepository userRepository;

    public VoteController(AdvertisementRepository advertisementRepository, CompanyRepository companyRepository, VoteRepository voteRepository, UserRepository userRepository) {
        this.advertisementRepository = advertisementRepository;
        this.companyRepository = companyRepository;
        this.voteRepository = voteRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("")
    public String vote() {


        return "vote";
    }

    @ResponseBody
    @GetMapping("/pagination/{index}/{index1}")
    public Map<String,Object> votePagination(@PathVariable String index,@PathVariable String index1){

        Integer pagenumber = Integer.parseInt(index);
        Integer pagesize = Integer.parseInt(index1);
        Map<String,Object> hm =new LinkedHashMap<>();

        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user= userRepository.findByEmailEquals(uname);

        Company company = user.getCompany();

        Pageable page = PageRequest.of(pagenumber, pagesize);
        List<Vote> voteList = voteRepository.findByCompanyEquals(company, page);

        System.out.println("asdddddddddd" + voteList);

        hm.put("datas",voteList);

        return hm;
    }

    @ResponseBody
    @GetMapping("/delete/{index}")
    public Integer voteDelete(@PathVariable String index){
        Integer id=Integer.parseInt(index);
        Integer status=0;
        System.out.println();
        try {
            voteRepository.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }

}
