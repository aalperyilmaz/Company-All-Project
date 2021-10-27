package com.works.restapix.restcontroller;

import com.works.restapix.entity.Advertisement;
import com.works.restapix.entity.User;
import com.works.restapix.repositories.AdvertisementRepository;
import com.works.restapix.repositories.UserRepository;
import com.works.restapix.utils.RestEnum;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/advertisement")
public class AdvertisementRestController {

    final AdvertisementRepository advertisementRepository;
    final UserRepository userRepository;

    public AdvertisementRestController(AdvertisementRepository advertisementRepository, UserRepository userRepository) {
        this.advertisementRepository = advertisementRepository;
        this.userRepository = userRepository;
    }

    @ResponseBody
    @GetMapping("/list")
    public Map<RestEnum,Object> advertisementList(){
        Map<RestEnum,Object> hm =new LinkedHashMap<>();
        String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user=userRepository.findByEmailEquals(uname);

        List<Advertisement> ls= advertisementRepository.findByCompanyEqualsAllIgnoreCase(user.getCompany());

        hm.put(RestEnum.status,true);
        hm.put(RestEnum.message,ls);

        return hm;
    }
}
