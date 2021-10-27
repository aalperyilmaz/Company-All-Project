package com.works.allcompanyproject.property;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
@Data
public class RegisterProp {
    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String firstName;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String lastName;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String email;
    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String password;


    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String companyName;
    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String companyAddress;
    private String companyLatitude;
    private String companyLongitude;
    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String companyTel;
    private String companySector;


}
