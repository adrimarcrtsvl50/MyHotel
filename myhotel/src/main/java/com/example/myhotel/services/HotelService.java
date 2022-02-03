package com.example.myhotel.services;

import java.util.ArrayList;

import com.example.myhotel.models.Hotel;
import com.example.myhotel.repositories.HotelRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelService {
    @Autowired
    private HotelRepository HotelRepository;

    public ArrayList<Hotel> findAll() {
        return (ArrayList<Hotel>) HotelRepository.findAll();
    }

    public Hotel findById(Integer id){ return HotelRepository.findById(id).get();};

    public Hotel save(Hotel hotel) {
        return HotelRepository.save(hotel);
    }

    public void deleteById(Integer id) {
        HotelRepository.deleteById(id);
    }
}
