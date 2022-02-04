package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.Room;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomRepository extends JpaRepository<Room, Integer> {
    
}
