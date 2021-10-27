package com.works.restapix.restcontroller;

import com.works.restapix.entity.Gallery;
import com.works.restapix.repositories.GalleryRepository;
import com.works.restapix.repositories.UserRepository;
import com.works.restapix.utils.RestEnum;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/gallery")

public class GalleryRestController {
final GalleryRepository galleryRepository;
final UserRepository userRepository;

    public GalleryRestController(GalleryRepository galleryRepository, UserRepository userRepository) {
        this.galleryRepository = galleryRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("/findbCatName/{index}")
    public Map<RestEnum, Object> getcategory(@PathVariable String index) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
        try {
            List<Gallery> ls= galleryRepository.findByCompany_CompanyIdAndGalleryComment(userRepository.findByEmailEquals(uname).getCompany().getCompanyId(),index);
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }


    @GetMapping("/listCategory")
    public Map<RestEnum, Object> getListcategory() {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
        try {
            List<Object> ls=galleryRepository.findByGalleryCommentlistNative(userRepository.findByEmailEquals(uname).getCompany().getCompanyId());
            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,ls);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }


}
