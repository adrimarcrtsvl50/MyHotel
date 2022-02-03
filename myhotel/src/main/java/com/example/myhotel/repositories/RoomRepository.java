package com.example.myhotel.repositories;

import com.example.myhotel.models.Room;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository  extends JpaRepository<Room,Integer> {
    
}
