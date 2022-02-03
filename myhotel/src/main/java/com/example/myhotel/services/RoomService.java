package com.example.myhotel.services;

import java.util.ArrayList;

import com.example.myhotel.models.Room;
import com.example.myhotel.repositories.RoomRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomService {
    @Autowired
    private RoomRepository RoomRepository;

    public ArrayList<Room> findAll() {
        return (ArrayList<Room>) RoomRepository.findAll();
    }

    public Room findById(Integer id){ return RoomRepository.findById(id).get();};

    public Room save(Room hotel) {
        return RoomRepository.save(hotel);
    }

    public void deleteById(Integer id) {
        RoomRepository.deleteById(id);
    }
}

