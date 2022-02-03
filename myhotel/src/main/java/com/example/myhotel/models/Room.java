package com.example.myhotel.models;

import java.math.BigDecimal;


import javax.persistence.Entity;

import org.hibernate.annotations.NaturalId;

import javax.persistence.*;

@Entity
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer id;

    @NaturalId
    @Column(nullable = false, unique = true)
    private String roomNumber;

    @ManyToOne
    private Hotel hotel;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private RoomType roomType;

    @Column(nullable = false)
    private int beds;

    @Column(nullable = false)
    private BigDecimal costPerNight;

    @OneToOne
    private Reservation reservation;
 
    public Room() {
    }


    public Reservation getReservation() {
        return reservation;
    }


    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }


    public BigDecimal getCostPerNight() {
        return costPerNight;
    }

    public void setCostPerNight(BigDecimal costPerNight) {
        this.costPerNight = costPerNight;
    }

    public int getBeds() {
        return beds;
    }

    public void setBeds(int beds) {
        this.beds = beds;
    }

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Room(String roomNumber, RoomType roomType, int beds, BigDecimal costPerNight) {
        this.setRoomNumber(roomNumber);
        this.setRoomType(roomType);
        this.setBeds(beds);
        this.setCostPerNight(costPerNight);
    }

    
   

   
}
