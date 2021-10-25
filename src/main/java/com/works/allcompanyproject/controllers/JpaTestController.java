package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class JpaTestController {
    final UserRepository userRepository;
final CompanyRepository companyRepository;
final FormRepository formRepository;
final NewsRepository newsRepository;
final NewsCategoryRepository newsCategoryRepository;
    public JpaTestController(UserRepository userRepository, CompanyRepository companyRepository
            , FormRepository formRepository, NewsRepository newsRepository,
                             NewsCategoryRepository newsCategoryRepository) {
        this.userRepository = userRepository;
        this.companyRepository = companyRepository;
        this.formRepository = formRepository;
        this.newsRepository = newsRepository;
        this.newsCategoryRepository = newsCategoryRepository;
    }
/*

    @GetMapping("/registers")
    private String jpa(){
 */
/*   NewsCategory newsCategory=new NewsCategory();
    News news=new News();
   news.setCompany(companyRepository.findById(1).get());
   news.setNewsTitle("EKLEDİM KATEGORİ TEK askljşdasjk");
List<NewsCategory> ls = newsCategoryRepository.findAll();

   news.setNewsCategories(ls);

   newsRepository.save(news);*//*




        return "registers";
    }
*/

  /*  @PostMapping("/post2obj")
    public String postTest(User galleryOption, Company galleryProp){
        System.out.println("GALLER PROP"+ galleryProp.getCompanyName()+"--"+galleryProp.getCompanyAddress());
        System.out.println("Gallery Option-------"+galleryOption.getEmail());
       Company company=companyRepository.save(galleryProp);
        galleryOption.setCompany(company);
        userRepository.save(galleryOption);
        return "registers";
    }
*/
}
