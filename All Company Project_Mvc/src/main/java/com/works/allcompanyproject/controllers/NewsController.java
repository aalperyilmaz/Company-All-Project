package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.News;
import com.works.allcompanyproject.entities.NewsCategory;
import com.works.allcompanyproject.property.NewsProperty;
import com.works.allcompanyproject.property.NewsSearchProp;
import com.works.allcompanyproject.repository.NewsCategoryRepository;
import com.works.allcompanyproject.repository.NewsRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/news")
public class NewsController {

    List<News> newsList = new ArrayList<>();


    private final String UPLOAD_DIR = "src/main/resources/static/uploads/";

    String errorMessage = "";


    final NewsRepository newsRepository;
    final NewsCategoryRepository newsCategoryRepository;

    public NewsController(NewsRepository newsRepository, NewsCategoryRepository newsCategoryRepository) {
        this.newsRepository = newsRepository;
        this.newsCategoryRepository = newsCategoryRepository;
    }

    @GetMapping("")
    public String news(Model model){

        List<NewsCategory> newsCategoryList = newsCategoryRepository.findAll();
        model.addAttribute("newsCategoryList", newsCategoryList);

        long totalNews = newsRepository.countByNewsIdIsAllIgnoreCase();
        model.addAttribute("totalNews", totalNews);

        if(newsList.size()==0){
            int newspagesize = 10;
            model.addAttribute("newspagesize", newspagesize);
            Pageable pageable = PageRequest.of(0,newspagesize);
            newsList = newsRepository.findByOrderByNewsIdAsc(pageable);
            System.out.println("Boş req If içi : " + newspagesize);
        }

        model.addAttribute("newsList", newsList);
        newsList = new ArrayList<>();

        return "news";
    }

//    @DeleteMapping("/delete/{deleteId}")
//    public String newsDelete(@PathVariable String deleteId){
//        try {
//            int newsId = Integer.parseInt(deleteId);
//
//            newsRepository.deleteById(newsId);
//        } catch (NumberFormatException e) {
//            System.out.println("Haber silinirken hata" + e);
//        }
//
//        return "redirect:/news";
//    }

    @GetMapping("/list/{pageSize}/{pageNumber}")
    public String newsList(@PathVariable String pageSize, @PathVariable String pageNumber, Model model){

        //pagenumber kaçıncı sayfada olunduğunun, pagesize ise bir sayfada kaç obje olduğunu belirtir
        int newsppagesize = Integer.parseInt(pageSize);
        int pagenum = Integer.parseInt(pageNumber);

        Pageable pageable = PageRequest.of(pagenum,newsppagesize);
        newsList = newsRepository.findByOrderByNewsIdAsc(pageable);
        long totalNews = newsRepository.countByNewsIdIsAllIgnoreCase();
        model.addAttribute("totalNews", totalNews);
        model.addAttribute("newspagesize", newsppagesize);
        model.addAttribute("newsList", newsList);
        System.out.println("Haber Sayfaları uzunluğu : " + newsList.size());


        return "news";
    }

    @GetMapping("/delete/{deleteId}")
    public String deleteNews(@PathVariable String deleteId){
        System.out.println("Haber silme try üstü ----------------------");
        try {
            int newsId = Integer.parseInt( deleteId );
            Optional<News> newsOptional = newsRepository.findById(newsId);
            if ( newsOptional.isPresent() ) {
                newsRepository.deleteById(newsId);
                // file delete
                String deleteFilePath = newsOptional.get().getNewsImageUrl();
                File file = new File(UPLOAD_DIR+deleteFilePath);
                file.delete();
                newsList = new ArrayList<>();
            }
        }catch (Exception ex) {
            errorMessage = "Silme işlemi sırasında bir hata oluştu!";
        }

        return "redirect:/news";
    }

    @GetMapping("/filter")
    public String deleteNews(NewsSearchProp newsSearchProp, Model model){

        newsList = newsRepository.findByNewsStatusAndNewsCategories_NewsCategoryIdAllIgnoreCase(newsSearchProp.getNewsStatusSearch(),newsSearchProp.getSearchCatId());
        model.addAttribute("newsList", newsList);
        model.addAttribute("totalNews", newsList.size());
        newsList = new ArrayList<>();
        List<NewsCategory> newsCategoryList = newsCategoryRepository.findAll();
        model.addAttribute("newsCategoryList", newsCategoryList);
        return "news";
    }



}
