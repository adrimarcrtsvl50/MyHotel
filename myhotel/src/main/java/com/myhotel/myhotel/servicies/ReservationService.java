package com.myhotel.myhotel.servicies;
import java.util.ArrayList;

import com.myhotel.myhotel.models.Reservation;
import com.myhotel.myhotel.repositories.ReservationReposity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ReservationService {
    @Autowired
    private ReservationReposity reservationRepository;
    public ArrayList<Reservation> findAll() {
        return (ArrayList<Reservation>) reservationRepository.findAll();
    }

    public Reservation findById(Integer id){ return reservationRepository.findById(id).get();};

    public Reservation save(Reservation reservation) {
        return reservationRepository.save(reservation);
    }

    public void deleteById(Integer id) {
        reservationRepository.deleteById(id);
    }
}
