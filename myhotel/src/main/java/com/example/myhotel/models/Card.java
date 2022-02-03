package com.example.myhotel.models;

import javax.persistence.*;
import java.sql.Date;

@Entity
public class Card {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer id;
    
    public Card() {
    }

   

    public Card(Integer id, String nombre, Integer numero, Date vencimiento, Integer cvv) {
        this.id = id;
        this.nombre = nombre;
        this.numero = numero;
        this.setVencimiento(vencimiento);
        this.cvv = cvv;
    }

    @Column(nullable = false)
    private String nombre;
    
    @Column(nullable = false)
    private Integer numero;
    
    @Column(nullable = false)
    private Date vencimiento;

    @Column(nullable = false)
    private Integer cvv;

    public Integer getId() {
        return id;
    }

    public Date getVencimiento() {
        return vencimiento;
    }

    public void setVencimiento(Date vencimiento) {
        this.vencimiento = vencimiento;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    


    public Integer getCvv() {
        return cvv;
    }

    public void setCvv(Integer cvv) {
        this.cvv = cvv;
    }
    @OneToOne
    private BillingAddress fk_id_billingAddress;

    public BillingAddress getFk_id_billingAddress() {
        return fk_id_billingAddress;
    }

    public void setFk_id_billingAddress(BillingAddress fk_id_billingAddress) {
        this.fk_id_billingAddress = fk_id_billingAddress;
    }
   
}