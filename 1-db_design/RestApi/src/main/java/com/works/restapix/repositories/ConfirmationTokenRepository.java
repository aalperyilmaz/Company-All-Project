package com.works.restapix.repositories;


import com.works.restapix.entity.ConfirmationToken;
import com.works.restapix.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfirmationTokenRepository extends JpaRepository<ConfirmationToken,String> {
    ConfirmationToken findByConfirmationTokenEquals(String confirmationToken);

    ConfirmationToken findByUserEquals(User user);

    ConfirmationToken findByUser_EmailEquals(String email);



}
