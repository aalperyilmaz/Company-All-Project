package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.News;
import com.works.allcompanyproject.entities.NewsCategory;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.property.NewsProperty;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.NewsCategoryRepository;
import com.works.allcompanyproject.repository.NewsRepository;
import com.works.allcompanyproject.repository.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.util.StringUtils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;
import java.util.Date;


@Controller
@RequestMapping("/newsAdd")
public class NewsAddController {

    private final String UPLOAD_DIR = "src/main/resources/static/uploads/";

    long maxFileUploadSize = 2048;
    int sendCount = 0;
    int sendSuccessCount = 0;
    String errorMessage = "";


    final NewsRepository newsRepository;
    final NewsCategoryRepository newsCategoryRepository;
    final CompanyRepository companyRepository;
    final UserRepository userRepository;
    News newsUpdate = new News();

    public NewsAddController(NewsRepository newsRepository, NewsCategoryRepository newsCategoryRepository, CompanyRepository companyRepository, UserRepository userRepository) {
        this.newsRepository = newsRepository;
        this.newsCategoryRepository = newsCategoryRepository;
        this.companyRepository = companyRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("")
    public String news(Model model) {

        List<NewsCategory> newsAddCategoryList = newsCategoryRepository.findAll();
        model.addAttribute("newsUpdate", newsUpdate);
        model.addAttribute("newsAddCategoryList", newsAddCategoryList);

        return "newsAdd";
    }


    @PostMapping("/add")
    public String newsImageUpload(@RequestParam("newsImageUrl")MultipartFile[] files, NewsProperty newsProperty) {
        //Property'den aktarılacak veriler için nesne üretimi
        News news = new News();

        if (newsUpdate.getNewsId() != null && newsUpdate.getNewsId() > 0) {
            news.setNewsId(newsUpdate.getNewsId());
        }

        if ( files != null && files.length != 0 ) {
            sendCount = files.length;
            for ( MultipartFile file : files ) {

                long fileSizeMB = file.getSize() / 1024;
                if ( fileSizeMB > maxFileUploadSize ) {
                    System.err.println("Dosya boyutu çok büyük Max 2MB");
                    errorMessage = "Dosya boyutu çok büyük Max "+ (maxFileUploadSize / 1024) +"MB olmalıdır";
                }else {
                    String fileName = StringUtils.cleanPath(file.getOriginalFilename());
                    String ext = fileName.substring(fileName.length()-5, fileName.length());
                    String uui = UUID.randomUUID().toString();
                    fileName = uui + ext;

                    System.out.println("ext : " + ext);
                    System.out.println("uui : " + uui);
                    System.out.println("fileName : " + fileName);
                    try {
                        Path path = Paths.get(UPLOAD_DIR + fileName);
                        Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                        sendSuccessCount += 1;



                    //property'den alınan veriler nesneye aktarılıyor
                    news.setNewsTitle(newsProperty.getNewsTitle());
                    news.setNewsCategories(newsProperty.getNewsCategories());
                    news.setNewsAddDate(new Date());
                    news.setNewsImageUrl(fileName);
                    news.setNewsShortComment(newsProperty.getNewsShortComment());
                    news.setNewsLongComment(newsProperty.getNewsLongComment());
                    news.setNewsStatus(newsProperty.getNewsStatus());

                        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
                        User user= userRepository.findByEmailEquals(uname);

                    news.setCompany(user.getCompany());

                    newsRepository.saveAndFlush(news);
                    newsUpdate = new News();

                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }else {
            errorMessage = "Lütfen resim seçiniz!";
        }


        return "redirect:/news";
    }










//    @PostMapping(value = "/add")
//    public String newsAdd(@RequestParam("newsImageUrl")MultipartFile file, NewsProperty newsProperty) throws IOException {
//        if (file != null && file.getBytes().length == 0) {
//
//            long fileSizeMB = file.getSize() / 1024;
//            if (fileSizeMB > maxFileUploadSize) {
//                System.err.println("Dosya boyutu çok büyük Max 2MB");
//                errorMessage = "Dosya boyutu çok büyük Max " + (maxFileUploadSize / 1024) + "MB olmalıdır";
//            } else {
//                String fileName = StringUtils.cleanPath(file.getOriginalFilename());
//                String ext = fileName.substring(fileName.length() - 5, fileName.length());
//                String uui = UUID.randomUUID().toString();
//                fileName = uui + ext;
//                try {
//                    Path path = Paths.get(UPLOAD_DIR + fileName);
//                    Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
//
//                    //Property'den aktarılacak veriler için nesne üretimi
//                    News news = new News();
//
//                    //property'den alınan veriler nesneye aktarılıyor
//                    news.setNewsTitle(newsProperty.getNewsTitle());
//                    news.setNewsCategories(newsProperty.getNewsCategories());
//                    news.setNewsAddDate(new Date());
//                    news.setNewsImageUrl(fileName);
//                    news.setNewsShortComment(newsProperty.getNewsShortComment());
//                    news.setNewsLongComment(newsProperty.getNewsLongComment());
//                    news.setNewsStatus(newsProperty.getNewsStatus());
//                    news.setCompany(companyRepository.findById(1).get());
//
//                    System.out.println("Resim url : " + fileName);
//
//                    newsRepository.saveAndFlush(news);
//                    newsUpdate = new News();
//                } catch (Exception e) {
//                    System.out.println("Haber kaydedilirken hata meydana geldi : " + e.getLocalizedMessage());
//                }
//            }
//
//        } else {
//            errorMessage = "Lütfen resim seçiniz!";
//        }
//
//        return "redirect:/newsAdd";
//    }

    @GetMapping("/update/{updateId}")
    public String contentUpdate(@PathVariable String updateId){

        try {
            Integer newsId = Integer.parseInt(updateId);
            newsUpdate = newsRepository.findById(newsId).get();
        } catch (Exception e) {
            System.out.println("Haber güncellenmesi sırasında hata " + e.getLocalizedMessage());
        }

        return "redirect:/newsAdd";
    }



}
