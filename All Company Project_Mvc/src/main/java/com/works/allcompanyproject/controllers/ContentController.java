package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Content;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.ContentRepository;
import com.works.allcompanyproject.repository.UserRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/content")
public class ContentController {

    Content contentUpdate = new Content();
    List<Content> contentList = new ArrayList<>();
    final ContentRepository contentRepository;
    final CompanyRepository companyRepository;
    final UserRepository userRepository;
    public ContentController(ContentRepository contentRepository, CompanyRepository companyRepository, UserRepository userRepository) {
        this.contentRepository = contentRepository;
        this.companyRepository = companyRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("")
    public String content(Model model){

        long totalContent = contentRepository.countByContentIdAllIgnoreCase();
        model.addAttribute("totalContent", totalContent);

        if(contentList.size() == 0){
            int pagesize = 10;
            model.addAttribute("cpagesize", pagesize);
            Pageable pageable = PageRequest.of(0,pagesize);
            contentList = contentRepository.findByOrderByContentIdAsc(pageable);
        }


        model.addAttribute("cu",contentUpdate);
//        List<Content> contentList = contentRepository.findAll();
        model.addAttribute("contentList", contentList);
        contentList = new ArrayList<>();
        return "companyContent";
    }


    @GetMapping("/delete/{deleteId}")
    public String contentDelete(@PathVariable String deleteId){

        Integer contentId = Integer.parseInt(deleteId);

        try {
            contentRepository.deleteById(contentId);
            contentList = new ArrayList<>();
        } catch (Exception e) {
            System.out.println("İçerik silme sırasında hata " + e.getLocalizedMessage());
        }

        return "redirect:/content";

    }


    @PostMapping("/add")
    public String contentAdd(Content content){

        try {
            if(contentUpdate.getContentId() !=null && contentUpdate.getContentId()>0){
                content.setContentId(contentUpdate.getContentId());

            }

            String uname = SecurityContextHolder.getContext().getAuthentication().getName();
            User user= userRepository.findByEmailEquals(uname);


            content.setContentAddDate(new Date());
            content.setCompany(user.getCompany());

            contentRepository.saveAndFlush(content);
            contentUpdate = new Content();
            contentList = new ArrayList<>();

        } catch (Exception e) {
            System.out.println("İçerik kaydı sırasında hata " + e.getLocalizedMessage());
        }

        return "redirect:/content";
    }

    @GetMapping("/update/{updateId}")
    public String contentUpdate(@PathVariable String updateId, Model model){

        try {
                Integer contentId = Integer.parseInt(updateId);
                contentUpdate = contentRepository.findById(contentId).get();
            contentList = new ArrayList<>();
        } catch (Exception e) {
            System.out.println("İçerik güncellenmesi sırasında hata " + e.getLocalizedMessage());
        }

        return "redirect:/content";
    }

    @GetMapping("/list/{pageSize}/{pageNumber}")
    public String contentList(@PathVariable String pageSize, @PathVariable String pageNumber, Model model){
        //pagenumber kaçıncı sayfada olunduğunun, pagesize ise bir sayfada kaç obje olduğunu belirtir
        int contentppagesize = Integer.parseInt(pageSize);
        int pagenum = Integer.parseInt(pageNumber);


        Pageable pageable = PageRequest.of(pagenum,contentppagesize);
        contentList = contentRepository.findByOrderByContentIdAsc(pageable);
        model.addAttribute("cpagesize", contentppagesize);
        long totalContent = contentRepository.countByContentIdAllIgnoreCase();
        model.addAttribute("totalContent", totalContent);
//        System.out.println("//////////////////////////////////////////////////////////////////////////////");
        model.addAttribute("contentList", contentList);
        System.out.println("İçerik Sayfa uzunluğu : " + contentList.size());

        return "companyContent";
    }

    @GetMapping("/filter/{status}")
    public String contentFilter(@PathVariable String status, Model model){

        int searchStatus = Integer.parseInt(status);
        Pageable pageable = PageRequest.of(0,10);

        if (searchStatus ==0){
            contentList = contentRepository.findByContentStatusAllIgnoreCaseOrderByContentIdAsc(searchStatus,pageable);
            model.addAttribute("contentList", contentList);
            long totalFiltered = contentRepository.countByContentStatusAllIgnoreCase(0);
            model.addAttribute("totalContent", totalFiltered);
            totalFiltered = 0;
        }
        else {
            contentList = contentRepository.findByContentStatusAllIgnoreCaseOrderByContentIdAsc(searchStatus,pageable);
            model.addAttribute("contentList", contentList);
            long totalFiltered = contentRepository.countByContentStatusAllIgnoreCase(1);
            model.addAttribute("totalContent", totalFiltered);
            totalFiltered = 0;
        }

        model.addAttribute("cpagesize", 10);
        contentList = new ArrayList<>();


        return "companyContent";
    }


}







