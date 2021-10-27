package com.works.restapix.entity;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;
@ApiModel(value = "Customer Model", description = "Yeni Müşteri Ekleme için Kullanılır.")
@Entity
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String firstName;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String lastName;

    @NotNull(message = "Bu parametre null olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String email;
    private String password;
    private boolean enabled;
    private boolean tokenExpired;
    @OneToOne
    private Company company;

    @ManyToMany
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(
                    name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(
                    name = "role_id", referencedColumnName = "id"))
    private List<Role> roles;
}
