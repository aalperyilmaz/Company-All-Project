package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Adress;
import com.works.allcompanyproject.entities.Announcement;
import com.works.allcompanyproject.entities.Orders;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.repository.AdressRepository;
import com.works.allcompanyproject.repository.OrdersRepository;
import com.works.allcompanyproject.repository.UserRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    List<Orders> ordersList = new ArrayList<>();

    Optional<Adress> adressList1;

    final OrdersRepository ordersRepository;
    final AdressRepository adressRepository;
    final UserRepository userRepository;

    public OrdersController(OrdersRepository ordersRepository, AdressRepository adressRepository, UserRepository userRepository) {
        this.ordersRepository = ordersRepository;
        this.adressRepository = adressRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("")
    public String orders(Model model){

        long totalOrdersPage = ordersRepository.countByOrdersIdAllIgnoreCase();
        model.addAttribute("totalOrdersPage", totalOrdersPage);

        if (  ordersList.size() == 0  )
        {
            int orderspagesize = 10;
            model.addAttribute("orderspagesize", orderspagesize);
            Pageable pageable = PageRequest.of(0,orderspagesize);
            ordersList = ordersRepository.findByAllIgnoreCaseOrderByOrdersIdAsc(pageable);

        }

        model.addAttribute("ordersList", ordersList);
        ordersList = new ArrayList<>();
        return "orders";
    }


    @GetMapping("/list/{pageSize}/{pageNumber}")
    public String ordersList(@PathVariable String pageSize, @PathVariable String pageNumber, Model model){

        //pagenumber kaçıncı sayfada olunduğunun, pagesize ise bir sayfada kaç obje olduğunu belirtir
        int orderspagesize = Integer.parseInt(pageSize);
        int pagenum = Integer.parseInt(pageNumber);


        Pageable pageable = PageRequest.of(pagenum,orderspagesize);
        long totalOrdersPage = ordersRepository.countByOrdersIdAllIgnoreCase();
        model.addAttribute("totalOrdersPage", totalOrdersPage);
        ordersList = ordersRepository.findByAllIgnoreCaseOrderByOrdersIdAsc(pageable);
        model.addAttribute("orderspagesize", orderspagesize);
//        System.out.println("//////////////////////////////////////////////////////////////////////////////");
        model.addAttribute("ordersList", ordersList);
        System.out.println("Sipraiş Sayfa uzunluğu : " + ordersList.size());


        return "orders";
    }


    @ResponseBody
    @GetMapping("/listRest")
    public Map<String, Object> ordersList() {
        Map<String,Object> hm =new LinkedHashMap<>();
        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user= userRepository.findByEmailEquals(uname);

        List<Orders> ordersListRest = ordersRepository.findByCompany_CompanyId(user.getCompany().getCompanyId());
        hm.put("Bilgiler :", ordersListRest);

        return hm;
    }

    @ResponseBody
    @PostMapping("/ordersAddRest")
    public Integer addOrderRest(@RequestBody Orders orders){
        Integer status=0;
        try {
                ordersRepository.saveAndFlush(orders);
            status=20;
        } catch (Exception e) {
            status=0;
        }

        return status;
    }



}
