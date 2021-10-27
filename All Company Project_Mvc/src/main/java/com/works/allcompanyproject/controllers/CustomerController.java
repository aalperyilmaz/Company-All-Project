package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Customer;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.CustomerRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
List<Customer> customerList = new ArrayList<>();
Customer customerUpdate = new Customer();
    final CustomerRepository customerRepository;
    final CompanyRepository companyRepository;

    public CustomerController(CustomerRepository customerRepository, CompanyRepository companyRepository) {
        this.customerRepository = customerRepository;
        this.companyRepository = companyRepository;
    }

    @GetMapping("")
    public String customer(Model model){
        long totalCustomer = customerRepository.countByCustomerIdAllIgnoreCase();
        model.addAttribute("totalCustomer", totalCustomer);
        if(customerList.size() == 0){
            int pagesize = 10;
            model.addAttribute("cuspagesize", pagesize);
            Pageable pageable = PageRequest.of(0,pagesize);
            customerList = customerRepository.findByOrderByCustomerIdAsc(pageable);
        }


        model.addAttribute("customerList",customerList);
        customerList = new ArrayList<>();


        return "customer";
    }

    @GetMapping("/delete/{deleteId}")
    public String customerDelete(@PathVariable String deleteId){
        int newsCategoryId = Integer.parseInt(deleteId);
        try {
            customerRepository.deleteById(newsCategoryId);
            customerList  = new ArrayList<>();
        } catch (Exception e) {
            System.out.println("Müşteri silinirken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/customer";
    }

    @GetMapping("/list/{pageSize}/{pageNumber}")
    public String customerList(@PathVariable String pageSize, @PathVariable String pageNumber, Model model){

        //pagenumber kaçıncı sayfada olunduğunun, pagesize ise bir sayfada kaç obje olduğunu belirtir
        int ppagesize = Integer.parseInt(pageSize);
        int pagenum = Integer.parseInt(pageNumber);


        Pageable pageable = PageRequest.of(pagenum,ppagesize);
        customerList = customerRepository.findByOrderByCustomerIdAsc(pageable);
        model.addAttribute("pagesize", ppagesize);
        long totalCustomer = customerRepository.countByCustomerIdAllIgnoreCase();
        model.addAttribute("totalCustomer", totalCustomer);
//        System.out.println("//////////////////////////////////////////////////////////////////////////////");
        model.addAttribute("customerList", customerList);
        System.out.println("Sayfa uzunluğu : " + customerList.size());


        return "customer";
    }
    @GetMapping("/ban/{banId}")
    public String customerBan(@PathVariable String banId){
        Integer banid = Integer.parseInt(banId);
        System.out.println("TRY Üstü");
        try {

            Customer customer = customerRepository.findById(banid).get();

            if(customer.getCustomerStatus() == 0){
                customer.setCustomerStatus(1);
            }

            else{
            customer.setCustomerStatus(0);
            }

            customerRepository.saveAndFlush(customer);

            customerList  = new ArrayList<>();

        }
        catch (Exception e) {
            System.out.println("Müşteri banlanırken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/customer";
    }

    @GetMapping("/update/{updateId}")
    public String customerUpdate(@PathVariable String updateId, Model model){
        int cusUpdateId = Integer.parseInt(updateId);
        try {
            customerUpdate = customerRepository.findById(cusUpdateId).get();
            model.addAttribute("customerUpdate", customerUpdate);

        } catch (Exception e) {
            System.out.println("Müşteri silinirken hata : " + e.getLocalizedMessage());
        }

        return "customerAdd";
    }

}
