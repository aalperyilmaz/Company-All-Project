package com.works.allcompanyproject.dto;

import com.works.allcompanyproject.entities.Gallery;
import com.works.allcompanyproject.property.GalleryOption;
import com.works.allcompanyproject.repository.GalleryRepository;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class GalleryDto {
final GalleryRepository galleryRepository;

    public GalleryDto(GalleryRepository galleryRepository) {
        this.galleryRepository = galleryRepository;
    }

    public Map<String,Object>galler_list(){
    Map<String,Object> hm=new LinkedHashMap<>();
List<Object> ls =galleryRepository.findByGalleryCommentlist();

hm.put("datas",ls);
    return hm;
}

    public Map<String,Object>gallery_detail_list(String comment){
        Map<String,Object> hm=new LinkedHashMap<>();
        List<Gallery> ls =galleryRepository.findByGalleryComment(comment);

        hm.put("datas",ls);
        return hm;
    }

public Integer deletebyId_gallery(String index){
        Integer status=0;
    Integer d=Integer.parseInt(index);
    try {
        galleryRepository.deleteById(d);
        status=20;
    } catch (Exception e) {
      status=0;
    }
    return status;
}


    public Integer deletebyId_galleryCommentName(String index){
        Integer status=0;
        System.out.println("index----------"+index);
        try {
         List<Gallery> ls=  galleryRepository.findByGalleryCommentEqualsAllIgnoreCase(index);
ls.forEach(item ->{
    galleryRepository.deleteById(item.getGalleryId());
});
            status=20;
        } catch (Exception e) {
            status=0;
            System.out.println("EXCEPTİON------------"+e.getLocalizedMessage());
        }
        return status;
    }


}
