package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Adress;
import com.works.allcompanyproject.entities.Customer;
import com.works.allcompanyproject.repository.AdressRepository;
import com.works.allcompanyproject.repository.CustomerRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/customerAdd")
public class CustomerAddController {
    List<Customer> customerList = new ArrayList<>();
    Customer customerUpdate = new Customer();
    final CustomerRepository customerRepository;
    final AdressRepository adressRepository;

    public CustomerAddController(CustomerRepository customerRepository, AdressRepository adressRepository) {
        this.customerRepository = customerRepository;
        this.adressRepository = adressRepository;
    }

    @GetMapping("")
    public String customer(Model model){
        customerList = customerRepository.findAll();
        model.addAttribute("customerList", customerList);

        model.addAttribute("customerUpdate", customerUpdate);
        customerUpdate = new Customer();
        return "customerAdd";
    }

    @PostMapping("/add")
    public String customerAdd(@ModelAttribute("customer") @Valid Customer customer, BindingResult bindingResult){
        if ( !bindingResult.hasErrors() ) {
            customer = new Customer();

        try {

            if (customerUpdate.getCustomerId() != null && customerUpdate.getCustomerId() > 0) {
                customer.setCustomerId(customerUpdate.getCustomerId());
            }
            customerRepository.saveAndFlush(customer);
            customerUpdate = new Customer();

        }
        catch (Exception e) {
            System.out.println("Müşteri kaydedilirken hata : " + e.getLocalizedMessage());
        }  }

        return "redirect:/customerAdd";
    }
    @GetMapping("/update/{updateId}")
    public String customerUpdate(@PathVariable String updateId, Model model){
        int cusUpdateId = Integer.parseInt(updateId);
        try {
            customerUpdate = customerRepository.findById(cusUpdateId).get();
            model.addAttribute("customerUpdate", customerUpdate);
            customerList = new ArrayList<>();
        } catch (Exception e) {
            System.out.println("Müşteri silinirken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/customerAdd";
    }

    @PostMapping("/address/add")
    public String addressAdd(Adress adress){

        try {

            adressRepository.save(adress);

        }
        catch (Exception e) {
            System.out.println("Adres kaydedilirken hata : " + e.getLocalizedMessage());
        }

        return "redirect:/customerAdd";
    }

}
