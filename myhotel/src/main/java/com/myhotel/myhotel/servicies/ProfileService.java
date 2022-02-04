package com.myhotel.myhotel.servicies;
import java.util.ArrayList;

import com.myhotel.myhotel.models.Profile;
import com.myhotel.myhotel.repositories.ProfileRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ProfileService {
    @Autowired
    private ProfileRepository profileRepository;
    public ArrayList<Profile> findAll() {
        return (ArrayList<Profile>) profileRepository.findAll();
    }

    public Profile findById(Integer id){ return profileRepository.findById(id).get();};

    public Profile save(Profile profile) {
        return profileRepository.save(profile);
    }

    public void deleteById(Integer id) {
        profileRepository.deleteById(id);
    }
}
