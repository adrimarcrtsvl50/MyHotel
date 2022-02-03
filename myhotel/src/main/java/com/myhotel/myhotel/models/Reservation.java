package com.myhotel.myhotel.models;


import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer id;

    @Column(nullable = false)
    private Date fechaInicial;
    @Column(nullable = false)
    private Date fechaFinal;
    
    public Integer getId() {
        return id;
    }








    public Date getFechaInicial() {
        return fechaInicial;
    }








    public void setFechaInicial(Date fechaInicial) {
        this.fechaInicial = fechaInicial;
    }








    public Date getFechaFinal() {
        return fechaFinal;
    }








    public void setFechaFinal(Date fechaFinal) {
        this.fechaFinal = fechaFinal;
    }








    public Card getCard() {
        return card;
    }








    public void setCard(Card card) {
        this.card = card;
    }








    public Pos getPos() {
        return pos;
    }








    public void setPos(Pos pos) {
        this.pos = pos;
    }








    public void setId(Integer id) {
        this.id = id;
    }
    @OneToOne(mappedBy = "reservation")
    private Room room;

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "reservation_guests",
            joinColumns = @JoinColumn(name = "reservation_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "guest_id", referencedColumnName = "id")
    )
    private Set<Profile> guests = new HashSet<>();

    public Set<Profile> getGuests() {
        return guests;
    }

    public void setGuests(Set<Profile> guests) {
        this.guests = guests;
    }

    @ManyToMany
    @JoinTable(
            name = "reservation_general_extras",
            joinColumns = @JoinColumn(name = "reservation_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "general_extra_id", referencedColumnName = "id")
    )
    private Set<ServiciosExtra> generalExtras = new HashSet<>();


    public Set<ServiciosExtra> getGeneralExtras() {
        return generalExtras;
    }

    public void setGeneralExtras(Set<ServiciosExtra> generalExtras) {
        this.generalExtras = generalExtras;
    }
    
    @OneToOne(optional = false)
    private Pos pos;

    @OneToOne(optional = false)
    private Card card;
}
