package com.myhotel.myhotel.repositories;

import com.myhotel.myhotel.models.ServiciosExtra;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ServiciosExtraRepository extends JpaRepository<ServiciosExtra,Integer>{
    
}
