package com.example.myhotel.models;

public class ServiciosExtra {
    
    private Integer id;
    private String name;
    private Float precie;
    public ServiciosExtra(Integer id, String name, Float precie) {
        this.setId(id);
        this.setName(name);
        this.setPrecie(precie);
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Float getPrecie() {
        return precie;
    }
    public void setPrecie(Float precie) {
        this.precie = precie;
    }
    public ServiciosExtra() {
    }
  
    
}
