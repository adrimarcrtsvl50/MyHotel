package com.myhotel.myhotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Hotel;
import com.myhotel.myhotel.servicies.HotelService;

@RestController
@RequestMapping(path = "/hotel")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class HotelController {
    @Autowired
    private HotelService hotelService;
    @GetMapping
    public ArrayList<Hotel> findAll() {
        return hotelService.findAll();
    }

    @GetMapping("/{id}")
    public Hotel findById(@PathVariable Integer id) {
        return hotelService.findById(id);
    }

    @PostMapping
    public Hotel save(@RequestBody Hotel hotel) {
        return hotelService.save(hotel);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        hotelService.deleteById(id);
    }

    @PutMapping
    public Hotel modify(@RequestBody Hotel hotel) {
        return hotelService.save(hotel);
    }
}
