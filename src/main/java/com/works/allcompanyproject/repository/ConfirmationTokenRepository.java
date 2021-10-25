package com.works.allcompanyproject.repository;

import com.works.allcompanyproject.entities.ConfirmationToken;
import com.works.allcompanyproject.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfirmationTokenRepository extends JpaRepository<ConfirmationToken,String> {
    ConfirmationToken findByConfirmationTokenEquals(String confirmationToken);

    ConfirmationToken findByUserEquals(User user);

    ConfirmationToken findByUser_EmailEquals(String email);



}
