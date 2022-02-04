package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.Pos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PosRepository extends JpaRepository<Pos,Integer> {
    
}
