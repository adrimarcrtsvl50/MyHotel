package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.Card;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardRepository extends JpaRepository<Card,Integer> {
    
}
