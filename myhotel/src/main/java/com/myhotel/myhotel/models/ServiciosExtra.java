package com.myhotel.myhotel.models;

import javax.persistence.*;

@Entity
public class ServiciosExtra {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer id;

    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false)
    private Float precie;
    public Integer getId() {
        return id;
    }
    public Float getPrecie() {
        return precie;
    }
    public void setPrecie(Float precie) {
        this.precie = precie;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setId(Integer id) {
        this.id = id;
    }
}
