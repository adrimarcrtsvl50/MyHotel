package com.myhotel.myhotel.servicies;
import java.util.ArrayList;

import com.myhotel.myhotel.models.ServiciosExtra;
import com.myhotel.myhotel.repositories.ServiciosExtraRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ServiviosExtraService {
    @Autowired
    private ServiciosExtraRepository extraRepository;
    public ArrayList<ServiciosExtra> findAll() {
        return (ArrayList<ServiciosExtra>) extraRepository.findAll();
    }

    public ServiciosExtra findById(Integer id){ return extraRepository.findById(id).get();};

    public ServiciosExtra save(ServiciosExtra extra) {
        return extraRepository.save(extra);
    }

    public void deleteById(Integer id) {
        extraRepository.deleteById(id);
    }
}
