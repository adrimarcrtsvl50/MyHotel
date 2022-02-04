package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.Hotel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HotelRepository extends JpaRepository<Hotel,Integer>{
    
}
