package com.works.allcompanyproject.property;

import lombok.Data;

@Data
public class PassChangeProp {
    private String oldPass;
    private String newPass;
    private String newPassConfirmed;

}
