package com.myhotel.myhotel.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Room;
import com.myhotel.myhotel.servicies.RoomService;

@RestController
@RequestMapping(path = "/room")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class RoomControlller {
    @Autowired
    private RoomService roomService;
    @GetMapping
    public ArrayList<Room> findAll() {
        return roomService.findAll();
    }

    @GetMapping("/{id}")
    public Room findById(@PathVariable Integer id) {
        return roomService.findById(id);
    }

    @PostMapping
    public Room save(@RequestBody Room room) {
        return roomService.save(room);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        roomService.deleteById(id);
    }

    @PutMapping
    public Room modify(@RequestBody Room room) {
        return roomService.save(room);
    }
}
