package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Announcement;
import com.works.allcompanyproject.redisrepository.CategoryRedisRepository;
import com.works.allcompanyproject.repository.AnnouncementRepository;
import com.works.allcompanyproject.repository.CompanyRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/announce")
public class AnnounceController {
final CategoryRedisRepository categoryRedisRepository;
    final AnnouncementRepository announcementRepository;
    final CompanyRepository companyRepository;
    public AnnounceController(CategoryRedisRepository categoryRedisRepository, AnnouncementRepository announcementRepository, CompanyRepository companyRepository) {
        this.categoryRedisRepository = categoryRedisRepository;
        this.announcementRepository = announcementRepository;
        this.companyRepository = companyRepository;
    }


    @GetMapping("")
    public String announce(){


        return "announce";
    }


    @PostMapping("/add")
 public String announceAdd (Announcement announcement){
        try {
            announcement.setCompany(companyRepository.findById(1).get());
            announcementRepository.save(announcement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/announce";
    }



@ResponseBody
    @PostMapping("/addAnnounce")
    public Integer Adds( @RequestBody Announcement announcement){
Integer status=0;
    try {
        announcement.setCompany(companyRepository.findById(1).get());
        announcementRepository.saveAndFlush(announcement);
        status=20;
    } catch (Exception e) {
        status=0;
    }

    return status;
    }




    @GetMapping("/list")
    public String announceList(){


        return "announce";
    }


    @ResponseBody
    @GetMapping("/listed")
    public Map<String,Object> annList(){
  Map<String,Object> hm =new LinkedHashMap<>();
  List<Announcement> ls= announcementRepository.findAll();
  hm.put("datas",ls);

        return hm;
    }


    @ResponseBody
    @GetMapping("/pagelisted/{index}/{index1}")
    public Map<String,Object> pageannList(@PathVariable String index,@PathVariable String index1){

        Map<String,Object> hm =new LinkedHashMap<>();
Announcement announcement=new Announcement();

      announcement.setAnnouncementComment("dsfsdfdsfsdf");
      announcement.setAnnouncementTitle("sadasdasdasd");
List<Announcement>ls=new ArrayList<>();
ls.add(announcement);
        hm.put("datas",ls);
      return hm;
    }




    @ResponseBody
    @GetMapping("/delete/{index}")
    public Integer annDelete(@PathVariable String index){
Integer id=Integer.parseInt(index);
Integer status=0;
        try {
            announcementRepository.deleteById(id);
            status=20;
        } catch (Exception e) {
           status=0;
        }


        return status;
    }



}
