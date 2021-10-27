package com.works.restapix.restcontroller;

import com.works.restapix.repositories.CompanyRepository;
import com.works.restapix.repositories.ConfirmationTokenRepository;
import com.works.restapix.repositories.RoleRepository;
import com.works.restapix.repositories.UserRepository;
import com.works.restapix.utils.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/customer")

public class Customer_Managemen {
    final UserService userService;
    final ConfirmationTokenRepository confirmationTokenRepository;
    final CompanyRepository companyRepository;
    final UserRepository userRepository;
    final RoleRepository roleRepository;


    public Customer_Managemen(UserService userService, ConfirmationTokenRepository confirmationTokenRepository, CompanyRepository companyRepository, UserRepository userRepository, RoleRepository roleRepository) {
        this.userService = userService;
        this.confirmationTokenRepository = confirmationTokenRepository;
        this.companyRepository = companyRepository;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }




        }
