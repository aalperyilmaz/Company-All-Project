package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Advertisement;
import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.repository.AdvertisementRepository;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.UserRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/advertisement")
public class AdvertisementController {

    AdvertisementRepository advertisementRepository;
    CompanyRepository companyRepository;
    UserRepository userRepository;

    public AdvertisementController(AdvertisementRepository advertisementRepository, CompanyRepository companyRepository, UserRepository userRepository) {
        this.advertisementRepository = advertisementRepository;
        this.companyRepository = companyRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("")
    public String Advertisement() {

        return "advertisement";
    }

    @PostMapping("/add")
    public String advertisementAdd (Advertisement advertisement){
        try {
            String uname = SecurityContextHolder.getContext().getAuthentication().getName();
            User user= userRepository.findByEmailEquals(uname);

            advertisement.setCompany(user.getCompany());
            advertisementRepository.saveAndFlush(advertisement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/advertisement";
    }

    @ResponseBody
    @GetMapping("/list")
    public Map<String,Object> advertisementList(){
        Map<String,Object> hm =new LinkedHashMap<>();
        List<Advertisement> ls= advertisementRepository.findAll();
        hm.put("datas",ls);

        return hm;
    }

    @ResponseBody
    @PostMapping("/update")
    public Integer advertisementUpdate (@RequestBody Advertisement advertisement){
        try {
            String uname = SecurityContextHolder.getContext().getAuthentication().getName();
            User user= userRepository.findByEmailEquals(uname);

            advertisement.setCompany(user.getCompany());
            advertisementRepository.saveAndFlush(advertisement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }

    @ResponseBody
    @GetMapping("/delete/{index}")
    public Integer advertisementDelete(@PathVariable String index){
        Integer id=Integer.parseInt(index);
        Integer status=0;
        try {
            advertisementRepository.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }

    @ResponseBody
    @GetMapping("/pagination/{index}/{index1}")
    public Map<String,Object> advertisementPagination(@PathVariable String index,@PathVariable String index1){

        Integer pagenumber = Integer.parseInt(index);
        Integer pagesize = Integer.parseInt(index1);
        Map<String,Object> hm =new LinkedHashMap<>();

        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user= userRepository.findByEmailEquals(uname);

        Company company = user.getCompany();

        Pageable page = PageRequest.of(pagenumber, pagesize);
        List<Advertisement> advertisementList = advertisementRepository.findByCompanyEquals(company, page);

        System.out.println(advertisementList);


        hm.put("datas",advertisementList);

        return hm;
    }


}
