package com.works.restapix.restcontroller;

import com.works.restapix.entity.Announcement;
import com.works.restapix.repositories.AnnouncementRepository;
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
@RequestMapping("/api/announce")
public class AnnounceRestController {

final AnnouncementRepository announcementRepository;
final UserRepository userRepository;

    public AnnounceRestController(AnnouncementRepository announcementRepository, UserRepository userRepository) {
        this.announcementRepository = announcementRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("/list/{index}/{index1}")
    public Map<RestEnum, Object> getAnnounce(@PathVariable String index,@PathVariable String index1) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        Integer page=Integer.parseInt(index);
        Integer size=Integer.parseInt(index1);
        String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
        Pageable pageable= PageRequest.of(page,size);
        try {
            List<Announcement> ls= announcementRepository.findByCompany_CompanyId(userRepository.findByEmailEquals(uname).getCompany().getCompanyId(),pageable);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);
        } catch (Exception e) {
            hm.put(RestEnum.status,true);
        }
        return hm;
    }

}
