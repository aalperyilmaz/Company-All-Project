package com.works.restapix.restcontroller;

import com.works.restapix.entity.Content;
import com.works.restapix.entity.User;
import com.works.restapix.repositories.ContentRepository;
import com.works.restapix.repositories.UserRepository;
import com.works.restapix.utils.RestEnum;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/content")
public class ContentRestController {
final ContentRepository contentRepository;
final UserRepository userRepository;
    public ContentRestController(ContentRepository contentRepository, UserRepository userRepository) {
        this.contentRepository = contentRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("/list")
    public Map<RestEnum, Object> getcontent() {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user=userRepository.findByEmailEquals(uname);
        Pageable pageable= PageRequest.of(0,10);
        try {
            List<Content> ls= contentRepository.findByCompany_CompanyId(user.getCompany().getCompanyId(),pageable);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }


}
