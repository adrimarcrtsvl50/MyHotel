package com.myhotel.myhotel.models;

import javax.persistence.*;

import org.hibernate.annotations.NaturalId;

@Entity
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer id;

    @NaturalId
    @Column(nullable = false, unique = true)
    private String roomNumber;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private RoomType roomType;

    @Column(nullable = false)
    private int beds;
    public Integer getId() {
        return id;
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
    public String getRoomNumber() {
        return roomNumber;
    }
    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    @ManyToOne
    private Hotel hotel;
    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }
    @OneToOne(cascade = CascadeType.ALL)
    private Reservation reservation;
    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        if (reservation != null) {
            this.reservation = reservation;
            reservation.setRoom(this);
        }
    }

    public boolean isReserved() {
        return reservation != null;
    }

    public Room(String roomNumber, RoomType roomType, int beds) {
        this.roomNumber = roomNumber;
        this.roomType = roomType;
        this.beds = beds;
    }

    public Room() {
    }
}
