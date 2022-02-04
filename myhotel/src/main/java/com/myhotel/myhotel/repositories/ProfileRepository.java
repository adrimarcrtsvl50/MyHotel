package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.Profile;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ProfileRepository extends JpaRepository<Profile,Integer>{
    
}
