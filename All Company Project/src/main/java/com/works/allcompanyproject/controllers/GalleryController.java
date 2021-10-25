package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.dto.GalleryDto;
import com.works.allcompanyproject.entities.Gallery;
import com.works.allcompanyproject.property.GalleryProp;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.GalleryRepository;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/gallery")
public class GalleryController {
    final GalleryDto galleryDto;
    final GalleryRepository gRepo;
final CompanyRepository cRepo;
    public GalleryController(GalleryDto galleryDto, GalleryRepository gRepo, CompanyRepository cRepo) {
        this.galleryDto = galleryDto;
        this.gRepo = gRepo;
        this.cRepo = cRepo;
    }


    @GetMapping("")
    public String galleryMain(){


        return "gallery";
    }

    private final String UPLOAD_DIR =  "src/main/resources/static/uploads/gallery/";
    long maxFileUploadSize = 20048;

    int sendCount = 0;
    int sendSuccessCount = 0;
    String errorMessage = "";


    // image upload fnc

    @PostMapping("/imageUpload")
    public String imageUpload(@RequestParam("imageName")MultipartFile[] files, GalleryProp gallery) {


        if ( files != null && files.length != 0 ) {
            sendCount = files.length;
            for ( MultipartFile file : files ) {

                long fileSizeMB = file.getSize() / 1024;
                if ( fileSizeMB > maxFileUploadSize ) {
                    System.err.println("Dosya boyutu çok büyük Max 2MB");
                    errorMessage = "Dosya boyutu çok büyük Max "+ (maxFileUploadSize / 1024) +"MB olmalıdır";
                }else {
                    String fileName = StringUtils.cleanPath(file.getOriginalFilename());
                    String ext = fileName.substring(fileName.length()-5, fileName.length());
                    String uui = UUID.randomUUID().toString();
                    fileName = uui + ext;
                    try {
                        Path path = Paths.get(UPLOAD_DIR + fileName);
                        Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                        sendSuccessCount += 1;
                        Gallery gallery1=new Gallery();
                        // add database
                        gallery1.setGalleryComment(gallery.getGalleryComment());
                        gallery1.setGalleryName(gallery.getGalleryName());
                        gallery1.setGalleryUrl(fileName);

                        gallery1.setCompany(cRepo.findById(1).get());
                        gRepo.save(gallery1);

                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }else {
            errorMessage = "Lütfen resim seçiniz!";
        }


        return "redirect:/gallery";
        }





    @GetMapping("/deletegallery/{iid}")
    public String deleteLabresult(@PathVariable String iid ) {

        try {
            int ciid = Integer.parseInt( iid );
            Optional<Gallery> opi = gRepo.findById(ciid);
            if ( opi.isPresent() ) {
                gRepo.deleteById(ciid);
                // file delete
                String deleteFilePath = opi.get().getGalleryUrl();
                File file = new File(UPLOAD_DIR+deleteFilePath);
                file.delete();

            }
        }catch (Exception ex) {

        }
        return "redirect:/gallery";
    }


    @ResponseBody
    @GetMapping("/listed")
    public Map<String,Object> listGallery(){
        return galleryDto.galler_list();
    }


    @ResponseBody
    @GetMapping("/detail/listed/{index}")
    public Map<String,Object> listGallery_detail(@PathVariable String index){
        return galleryDto.gallery_detail_list(index);
    }

    @ResponseBody
    @GetMapping("/delete/{index}")
    public Integer delGallery(@PathVariable String index){
        return galleryDto.deletebyId_gallery(index);
    }


    @ResponseBody
    @GetMapping("/deletebyname/{index}")
    public Integer delGallerybyNames(@PathVariable String index){
        System.out.println("indexx----- mapping"+index);
        return galleryDto.deletebyId_galleryCommentName(index);
    }
}
