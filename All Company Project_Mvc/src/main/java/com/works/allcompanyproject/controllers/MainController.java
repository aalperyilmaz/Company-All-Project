package com.works.allcompanyproject.controllers;


import com.works.allcompanyproject.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {

    final ContentRepository contentRepository;
    final CustomerRepository customerRepository;
    final NewsRepository newsRepository;
    final OrdersRepository ordersRepository;
    final AnnouncementRepository announcementRepository;
    final ProductRepository productRepository;



int sayi = 100;

    public MainController(ContentRepository contentRepository, CustomerRepository customerRepository, NewsRepository newsRepository, OrdersRepository ordersRepository, AnnouncementRepository announcementRepository, ProductRepository productRepository) {
        this.contentRepository = contentRepository;
        this.customerRepository = customerRepository;
        this.newsRepository = newsRepository;
        this.ordersRepository = ordersRepository;
        this.announcementRepository = announcementRepository;
        this.productRepository = productRepository;
    }

    @GetMapping("")
    public String home(Model model) {

        long contentCount = contentRepository.countByContentIdAllIgnoreCase();
        model.addAttribute("contentCount",contentCount);

        long customerCount = customerRepository.countByCustomerIdAllIgnoreCase();
        model.addAttribute("customerCount",customerCount);

        long newsCount = newsRepository.countByNewsIdIsAllIgnoreCase();
        model.addAttribute("newsCount",newsCount);

        long anCount = announcementRepository.countByAnnouncementIdAllIgnoreCase();
        model.addAttribute("anCount",anCount);

        long cusCount = customerRepository.countByCustomerIdAllIgnoreCase();
        model.addAttribute("cusCount",cusCount);

        long ordersCount = ordersRepository.countByOrdersIdAllIgnoreCase();
        model.addAttribute("ordersCount",ordersCount);

        long prodCount = productRepository.countByProductIdAllIgnoreCase();
        model.addAttribute("prodCount",prodCount);

        model.addAttribute("sayi", sayi);
        return "main";
    }
}
