package com.example.myhotel.models;

import javax.persistence.*;
import java.sql.Date;


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
    
    @Column
    private Date fechaEntrega;

    @Column
    private Integer duracionEstimada;

    @Column
    private Integer duracionReal;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public Integer getDuracionEstimada() {
        return duracionEstimada;
    }

    public void setDuracionEstimada(Integer duracionEstimada) {
        this.duracionEstimada = duracionEstimada;
    }

    public Integer getDuracionReal() {
        return duracionReal;
    }

    public void setDuracionReal(Integer duracionReal) {
        this.duracionReal = duracionReal;
    }

    @OneToOne(optional = false)
    private Profile fk_id_profile;

    public Profile getFk_id_profile() {
        return fk_id_profile;
    }

    public void setFk_id_profile(Profile fk_id_profile) {
        this.fk_id_profile = fk_id_profile;
    }

    @OneToOne(optional = false)
    private Pos fk_id_pos;

    public Pos getFk_id_pos() {
        return fk_id_pos;
    }

    public void setFk_id_pos(Pos fk_id_pos) {
        this.fk_id_pos = fk_id_pos;
    }

    @OneToOne(optional = false)
    private Room room;

    @OneToOne(optional = false)
    private Card card;


    public Card getCard() {
        return card;
    }


    public void setCard(Card card) {
        this.card = card;
    }


    public Room getRoom() {
        return room;
    }


    public void setRoom(Room room) {
        this.room = room;
    }


    @ManyToOne(optional = false)
    private ServiciosExtra fk_id_extra;

    public ServiciosExtra getFk_id_bike() {
        return fk_id_extra;
    }

    public void setFk_id_bike(ServiciosExtra fk_id_extra) {
        this.fk_id_extra = fk_id_extra;
    }
    



}
