/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.world.entity;

import java.io.Serializable;
import java.util.Objects;
import javax.json.bind.annotation.JsonbProperty;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 *
 * @author tss
 */
@Entity
@Table(name = "city")
public class City implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @JsonbProperty(value = "name")
    @NotBlank
    @Column(name = "Name", nullable = false)
    private String name;

    @JsonbProperty(value = "district")
    @NotBlank
    @Column(name = "District", nullable = false)
    private String district;

    @JsonbProperty(value = "population")
    @NotBlank
    @Column(name = "Population", nullable = false)
    private Long population;
    
    @NotNull
    @JoinColumn(name = "CountryCode")
    @ManyToOne(optional = false)
    private Country country;
    

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

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public Long getPopulation() {
        return population;
    }

    public void setPopulation(Long population) {
        this.population = population;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }
    
    

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.id);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final City other = (City) obj;
        return Objects.equals(this.id, other.id);
    }

    @Override
    public String toString() {
        return "City{" + "id=" + id + ", name=" + name + ", district=" + district + ", population=" + population + ", country=" + country + '}';
    }

   
    
    

}
