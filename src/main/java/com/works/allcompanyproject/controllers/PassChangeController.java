package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.property.PassChangeProp;
import com.works.allcompanyproject.repository.UserRepository;
import com.works.allcompanyproject.services.UserService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/passChange")
public class PassChangeController {
final UserService userService;
final UserRepository userRepository;

    private Integer passConfirm=null;

    public PassChangeController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @GetMapping("")
    public String passChange(Model model){

        model.addAttribute("passConfirm",passConfirm);



        return "passChange";
    }


    @PostMapping("/passChanger")
public String PassChanger(PassChangeProp passChangeProp){
        System.out.println(passChangeProp);
if (passChangeProp.getNewPass().equals(passChangeProp.getNewPassConfirmed())){
   String email= SecurityContextHolder.getContext().getAuthentication().getName();
   UserDetails userDetails =userService.loadUserByUsername(email);

  if (userService.encoder().matches(passChangeProp.getOldPass(),userDetails.getPassword())){
     User updateUser= userRepository.findByEmailEquals(email);
     updateUser.setPassword(userService.encoder().encode(passChangeProp.getNewPass()));
     userRepository.saveAndFlush(updateUser);

      passConfirm=34;
  }
}else {
    passConfirm=34;
    return "redirect:/passChange";
}

        return "redirect:/passChange";
    }

}
