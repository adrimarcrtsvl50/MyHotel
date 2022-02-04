package com.myhotel.myhotel.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Profile;
import com.myhotel.myhotel.servicies.ProfileService;

@RestController
@RequestMapping(path = "/profile")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class ProfileController {
    @Autowired
    private ProfileService profileService;
    @GetMapping
    public ArrayList<Profile> findAll() {
        return profileService.findAll();
    }

    @GetMapping("/{id}")
    public Profile findById(@PathVariable Integer id) {
        return profileService.findById(id);
    }

    @PostMapping
    public Profile save(@RequestBody Profile profile) {
        return profileService.save(profile);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        profileService.deleteById(id);
    }

    @PutMapping
    public Profile modify(@RequestBody Profile profile) {
        return profileService.save(profile);
    }
}
