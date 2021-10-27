package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.News;
import com.works.allcompanyproject.entities.NewsCategory;
import com.works.allcompanyproject.repository.NewsCategoryRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/newsCategory")
public class NewsCategoryController {
    //Category Eklemek için
    List<NewsCategory> newsCategoryList= new ArrayList<>();
    NewsCategory nCU = new NewsCategory();


    final NewsCategoryRepository newsCategoryRepository;

    public NewsCategoryController(NewsCategoryRepository newsCategoryRepository) {
        this.newsCategoryRepository = newsCategoryRepository;
    }

    @GetMapping("")
    public String category(Model model){
        long totalPage = newsCategoryRepository.countByNewsCategoryIdAllIgnoreCase();
        model.addAttribute("totalPage", totalPage);

        if(newsCategoryList.size() == 0){
            int pagesize = 10;
        model.addAttribute("pagesize", pagesize);
        Pageable pageable = PageRequest.of(0,pagesize);

        newsCategoryList = newsCategoryRepository.findByOrderByNewsCategoryIdAsc(pageable);
        }


        model.addAttribute("nCU",nCU);
        model.addAttribute("newsCategoryList",newsCategoryList);
        newsCategoryList = new ArrayList<>();
        return "newsCategory";
    }

    @PostMapping("/add")
    public String categoryAdd(NewsCategory newsCategory){

        try {
            if(nCU.getNewsCategoryId()!=null && nCU.getNewsCategoryId()>0) {

                newsCategory.setNewsCategoryId(nCU.getNewsCategoryId());
            }
            newsCategoryRepository.saveAndFlush(newsCategory);
            nCU = new NewsCategory();
            newsCategoryList  = new ArrayList<>();

            }
        catch (Exception e) {
            System.out.println("Haber Kategorisi kaydedilirken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/newsCategory";
    }

    @GetMapping("/delete/{deleteId}")
    public String categoryDelete(@PathVariable String deleteId){
        int newsCategoryId = Integer.parseInt(deleteId);
        try {
            newsCategoryRepository.deleteById(newsCategoryId);
            newsCategoryList  = new ArrayList<>();
        } catch (Exception e) {
            System.out.println("Haber Kategorisi silinirken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/newsCategory";
    }

    @GetMapping("/update/{updateId}")
    public String categoryUpdate(@PathVariable String updateId, Model model){

        try {
            Integer newsCategoryId = Integer.parseInt(updateId);
            nCU = newsCategoryRepository.findById(newsCategoryId).get();
            newsCategoryList  = new ArrayList<>();
            model.addAttribute("nCU",nCU);

        } catch (Exception e) {
            System.out.println("Haber Kategorisi güncellenirken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/newsCategory";
    }

    @GetMapping("/list/{pageSize}/{pageNumber}")
    public String categoryList(@PathVariable String pageSize, @PathVariable String pageNumber, Model model){

 //pagenumber kaçıncı sayfada olunduğunun, pagesize ise bir sayfada kaç obje olduğunu belirtir
        int ppagesize = Integer.parseInt(pageSize);
        int pagenum = Integer.parseInt(pageNumber);


        Pageable pageable = PageRequest.of(pagenum,ppagesize);
        long totalPage = newsCategoryRepository.countByNewsCategoryIdAllIgnoreCase();
        model.addAttribute("totalPage", totalPage);
        newsCategoryList = newsCategoryRepository.findByOrderByNewsCategoryIdAsc(pageable);
        model.addAttribute("pagesize", ppagesize);
//        System.out.println("//////////////////////////////////////////////////////////////////////////////");
        model.addAttribute("newsCategoryList", newsCategoryList);
        System.out.println("Sayfa uzunluğu : " + newsCategoryList.size());


        return "newsCategory";
    }
}

