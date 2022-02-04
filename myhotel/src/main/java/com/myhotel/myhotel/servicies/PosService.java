package com.myhotel.myhotel.servicies;
import java.util.ArrayList;

import com.myhotel.myhotel.models.Pos;
import com.myhotel.myhotel.repositories.PosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PosService {
    @Autowired
    private PosRepository posRepository;
    public ArrayList<Pos> findAll() {
        return (ArrayList<Pos>) posRepository.findAll();
    }

    public Pos findById(Integer id){ return posRepository.findById(id).get();};

    public Pos save(Pos pos) {
        return posRepository.save(pos);
    }

    public void deleteById(Integer id) {
        posRepository.deleteById(id);
    }
}
