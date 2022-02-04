package com.myhotel.myhotel.servicies;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Hotel;
import com.myhotel.myhotel.repositories.HotelRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class HotelService {
    @Autowired
    private HotelRepository hotelRepository;
    public ArrayList<Hotel> findAll() {
        return (ArrayList<Hotel>) hotelRepository.findAll();
    }

    public Hotel findById(Integer id){ return hotelRepository.findById(id).get();};

    public Hotel save(Hotel hotel) {
        return hotelRepository.save(hotel);
    }

    public void deleteById(Integer id) {
        hotelRepository.deleteById(id);
    }
}
