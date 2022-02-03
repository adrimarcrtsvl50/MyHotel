package com.example.myhotel.controllers;


import java.util.ArrayList;

import com.example.myhotel.models.Hotel;
import com.example.myhotel.services.HotelService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "/hotels")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class HotelController {

    @Autowired
    private HotelService HotelService;
    
    @GetMapping
    public ArrayList<Hotel> findAll() {
        return HotelService.findAll();
    }

    @GetMapping("/{id}")
    public Hotel findById(@PathVariable Integer id) {
        return HotelService.findById(id);
    }

    @PostMapping
    public Hotel save(@RequestBody Hotel hotel) {
        return HotelService.save(hotel);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        HotelService.deleteById(id);
    }

    @PutMapping
    public Hotel modify(@RequestBody Hotel hotel) {
        return HotelService.save(hotel);
    }
}
