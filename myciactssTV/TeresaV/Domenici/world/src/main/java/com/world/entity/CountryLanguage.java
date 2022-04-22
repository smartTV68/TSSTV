/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.world.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;
import javax.json.bind.annotation.JsonbProperty;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

/**
 *
 * @author tss
 */@Entity
 @Table(name = "countrylanguage")
public class CountryLanguage  implements Serializable{
     
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CountrylanguagePK countrylanguagePK;
    @Basic(optional = false)
    @Column(name = "IsOfficial")
    private String isOfficial;
    @Basic(optional = false)
    @Column(name = "Percentage")
    private BigDecimal percentage;

    public CountrylanguagePK getCountrylanguagePK() {
        return countrylanguagePK;
    }

    public void setCountrylanguagePK(CountrylanguagePK countrylanguagePK) {
        this.countrylanguagePK = countrylanguagePK;
    }

    public String getIsOfficial() {
        return isOfficial;
    }

    public void setIsOfficial(String isOfficial) {
        this.isOfficial = isOfficial;
    }

    public BigDecimal getPercentage() {
        return percentage;
    }

    public void setPercentage(BigDecimal percentage) {
        this.percentage = percentage;
    }

   
    @Override
    public int hashCode() {
        int hash = 3;
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
        final CountryLanguage other = (CountryLanguage) obj;
        return Objects.equals(this.countrylanguagePK, other.countrylanguagePK);
    }

    @Override
    public String toString() {
        return "CountryLanguage{" + "countrylanguagePK=" + countrylanguagePK + ", isOfficial=" + isOfficial + ", percentage=" + percentage + '}';
    }

}
