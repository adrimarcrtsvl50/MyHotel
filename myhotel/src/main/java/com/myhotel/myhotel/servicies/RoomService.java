package com.myhotel.myhotel.servicies;
import java.util.ArrayList;

import com.myhotel.myhotel.models.Room;
import com.myhotel.myhotel.repositories.RoomRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RoomService {
    @Autowired
    private RoomRepository roomRepository;
    public ArrayList<Room> findAll() {
        return (ArrayList<Room>) roomRepository.findAll();
    }

    public Room findById(Integer id){ return roomRepository.findById(id).get();};

    public Room save(Room room) {
        return roomRepository.save(room);
    }

    public void deleteById(Integer id) {
        roomRepository.deleteById(id);
    }
}
