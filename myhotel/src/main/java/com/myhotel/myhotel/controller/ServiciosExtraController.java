package com.myhotel.myhotel.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.ServiciosExtra;
import com.myhotel.myhotel.servicies.ServiviosExtraService;

@RestController
@RequestMapping(path = "/extra")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class ServiciosExtraController {
    @Autowired
    private ServiviosExtraService extraService;
    @GetMapping
    public ArrayList<ServiciosExtra> findAll() {
        return extraService.findAll();
    }

    @GetMapping("/{id}")
    public ServiciosExtra findById(@PathVariable Integer id) {
        return extraService.findById(id);
    }

    @PostMapping
    public ServiciosExtra save(@RequestBody ServiciosExtra extra) {
        return extraService.save(extra);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        extraService.deleteById(id);
    }

    @PutMapping
    public ServiciosExtra modify(@RequestBody ServiciosExtra extra) {
        return extraService.save(extra);
    }
}
