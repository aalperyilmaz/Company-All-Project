package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.ConfirmationToken;
import com.works.allcompanyproject.entities.Role;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.property.RegisterProp;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.ConfirmationTokenRepository;
import com.works.allcompanyproject.repository.RoleRepository;
import com.works.allcompanyproject.repository.UserRepository;
import com.works.allcompanyproject.services.EmailSenderService;
import com.works.allcompanyproject.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.naming.AuthenticationException;
import javax.validation.Valid;
import java.util.*;

@Controller
@RequestMapping("/registers" )
public class RegisterController {
    final UserService userService;
    final ConfirmationTokenRepository confirmationTokenRepository;
    final CompanyRepository companyRepository;
    final UserRepository userRepository;
    final EmailSenderService senderService;
    final RoleRepository roleRepository;
    public RegisterController(UserService userService,
                              ConfirmationTokenRepository confirmationTokenRepository,
                              CompanyRepository companyRepository, UserRepository userRepository,
                              EmailSenderService senderService, RoleRepository roleRepository) {
        this.userService = userService;
        this.confirmationTokenRepository = confirmationTokenRepository;
        this.companyRepository = companyRepository;
        this.userRepository = userRepository;
        this.senderService = senderService;
        this.roleRepository = roleRepository;
    }

    @GetMapping("")
    public  String registerModel(Model model){
        RegisterProp registerProp =new RegisterProp();
   model.addAttribute("registerProp",registerProp);
        return "registers";
    }




    @PostMapping("/add")
    public String regFnc(@ModelAttribute("registerProp") @Valid RegisterProp registerProp, BindingResult bindingResult)  {
        User existingUser=userRepository.findByEmailEquals(registerProp.getEmail());
         User user=new User();
        Company company=new Company();
        company.setCompanyTel(registerProp.getCompanyTel());
        company.setCompanyAddress(registerProp.getCompanyAddress());
        company.setCompanyName(registerProp.getCompanyName());
        company.setCompanySector(registerProp.getCompanySector());
        company.setCompanyLatitude(registerProp.getCompanyLatitude());
        company.setCompanyLongitude(registerProp.getCompanyLongitude());

       user.setPassword(userService.encoder().encode(registerProp.getPassword()));
       user.setEmail(registerProp.getEmail());
       user.setFirstName(registerProp.getFirstName());
       user.setLastName(registerProp.getLastName());
       List<Role> roles =new ArrayList<>();
       roles.add(roleRepository.findById(2L).get());
       user.setRoles(roles);

        if ( !bindingResult.hasErrors() ) {
            Company  regCmp= null;
            try {
                regCmp = companyRepository.save(company);
            } catch (Exception e) {

            }
            if (existingUser == null){
         user.setCompany(regCmp);
         user.setEnabled(false);
         user.setTokenExpired(false);
         User us=userRepository.save(user);
         ConfirmationToken confirmationToken =new ConfirmationToken();
        confirmationToken.setConfirmationToken(UUID.randomUUID().toString());
       confirmationToken.setUser(us);
            confirmationToken.setCreatedDate(new Date());
        ConfirmationToken cnfrm=confirmationTokenRepository.save(confirmationToken);

         try {
             senderService.sendEmailWithAttachment("alperylmztr08@gmail.com",
                         "<a href=\"http://localhost:8090/registers/add/cnfrm/"+cnfrm.getConfirmationToken(),
                         "VERFY ACCOUNT");
         } catch (MessagingException e) {
         }
     }

        }


        return "registers";
    }


   @GetMapping("/add/cnfrm/{index}")
    public String confirmUsers(@PathVariable String index){
     ConfirmationToken confirmationToken=   confirmationTokenRepository.findByConfirmationTokenEquals(index);
        if (confirmationToken != null){
          User user= confirmationToken.getUser();
          user.setEnabled(true);
          user.setTokenExpired(true);
          userRepository.saveAndFlush(user);

          return "redirect:/login";
        }else {
            System.out.println("email verify tamamlanamadı");

        }

        return "redirect:/login";
   }
    public List<Map<String, String>> errors(BindingResult bResult) {
        List<Map<String, String>> ls = new LinkedList<>();

        bResult.getAllErrors().forEach( error -> {
            String fieldName = ( (FieldError) error ).getField();
            String fieldMessage = error.getDefaultMessage();

            Map<String,String> erhm = new HashMap<>();
            erhm.put("fieldName", fieldName);
            erhm.put("fieldMessage", fieldMessage);
            ls.add(erhm);
        });

        return ls;
    }

}
