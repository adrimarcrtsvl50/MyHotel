package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.Reservation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ReservationReposity extends JpaRepository<Reservation,Integer>{
    
}
