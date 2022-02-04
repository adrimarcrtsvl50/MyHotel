package com.myhotel.myhotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Pos;
import com.myhotel.myhotel.servicies.PosService;

@RestController
@RequestMapping(path = "/pos")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class PosController {
    @Autowired
    private PosService posService;
    @GetMapping
    public ArrayList<Pos> findAll() {
        return posService.findAll();
    }

    @GetMapping("/{id}")
    public Pos findById(@PathVariable Integer id) {
        return posService.findById(id);
    }

    @PostMapping
    public Pos save(@RequestBody Pos pos) {
        return posService.save(pos);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        posService.deleteById(id);
    }

    @PutMapping
    public Pos modify(@RequestBody Pos pos) {
        return posService.save(pos);
    }
}
