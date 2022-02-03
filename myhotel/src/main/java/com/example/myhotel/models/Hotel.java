package com.example.myhotel.models;

import javax.persistence.*;


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

    @OneToMany
    private Room rooms;
  
    public Hotel() {
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Room getRooms() {
        return rooms;
    }
    public void setRooms(Room rooms) {
        this.rooms = rooms;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
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
   
    public Hotel(String namehotel, String address, int stars, String email, Room rooms) {
        this.setNamehotel(namehotel);
        this.setAddress(address);
        this.setStars(stars);
        this.setEmail(email);
        this.setRooms(rooms);
    }

}
