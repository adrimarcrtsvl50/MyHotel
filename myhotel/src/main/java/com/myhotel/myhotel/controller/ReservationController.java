package com.myhotel.myhotel.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Reservation;
import com.myhotel.myhotel.servicies.ReservationService;

@RestController
@RequestMapping(path = "/reservation")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class ReservationController {
    @Autowired
    private ReservationService reService;
    @GetMapping
    public ArrayList<Reservation> findAll() {
        return reService.findAll();
    }

    @GetMapping("/{id}")
    public Reservation findById(@PathVariable Integer id) {
        return reService.findById(id);
    }

    @PostMapping
    public Reservation save(@RequestBody Reservation pos) {
        return reService.save(pos);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        reService.deleteById(id);
    }

    @PutMapping
    public Reservation modify(@RequestBody Reservation pos) {
        return reService.save(pos);
    }
}
