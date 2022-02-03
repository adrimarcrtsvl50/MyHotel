package com.example.myhotel.controllers;

import java.util.ArrayList;

import com.example.myhotel.models.Room;
import com.example.myhotel.services.RoomService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "/room")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class RoomController {
    @Autowired
    private RoomService RoomService;
    
    @GetMapping
    public ArrayList<Room> findAll() {
        return RoomService.findAll();
    }

    @GetMapping("/{id}")
    public Room findById(@PathVariable Integer id) {
        return RoomService.findById(id);
    }

    @PostMapping
    public Room save(@RequestBody Room bike) {
        return RoomService.save(bike);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        RoomService.deleteById(id);
    }

    @PutMapping
    public Room modify(@RequestBody Room room) {
        return RoomService.save(room);
    }
}
