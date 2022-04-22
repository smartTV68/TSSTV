/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.world.entity;

import java.io.Serializable;
import java.util.Optional;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

/**
 *
 * @author tss
 */
@Embeddable
public class CountrylanguagePK implements Serializable {

    
    @NotNull
    @JoinColumn(name = "CountryCode")
    @ManyToOne(optional = false)
    private Country country;
    @Basic(optional = false)
    @Column(name = "Language")
    private String language;

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Override
    public String toString() {
        return "CountrylanguagePK{" + "country=" + country + ", language=" + language + '}';
    }

    
    
    

    
    
}
