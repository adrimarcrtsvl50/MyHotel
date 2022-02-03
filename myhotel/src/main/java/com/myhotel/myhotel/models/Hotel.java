package com.myhotel.myhotel.models;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer id;

    @Column(nullable = false)
    private String namehotel;

    @Column(nullable = false)
    private String address;

    @Column(nullable = false)
    private int stars;

    @Column(nullable = false)
    private String email;
    
    public String getEmail() {
        return email;
    }

    public int getStars() {
        return stars;
    }
    public void setStars(int stars) {
        this.stars = stars;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getNamehotel() {
        return namehotel;
    }
    public void setNamehotel(String namehotel) {
        this.namehotel = namehotel;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    @OneToMany(mappedBy = "hotel", cascade = CascadeType.ALL)
    // Stop bidirectional relationship which cause a cycle.
    @JsonIgnore
    private Set<Room> rooms;
    public Set<Room> getRooms() {
        return rooms;
    }
    public void setRooms(Set<Room> rooms) {
        this.rooms = rooms;
    }
    public void addRoom(Room room) {
        rooms.add(room);
        room.setHotel(this);
    }

    public Hotel(String namehotel, String address, int stars, String email) {
        this.namehotel = namehotel;
        this.address = address;
        this.stars = stars;
        this.email = email;
        this.rooms = new HashSet<>();
    }
    public Hotel() {
    }
}
