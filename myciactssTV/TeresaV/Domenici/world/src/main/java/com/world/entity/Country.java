/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.world.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Objects;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

/**
 *
 * @author tss
 */
@Entity
@Table(name = "country")
public class Country implements Serializable {

    @Id
    @Column(name = "Code")
    private String code;

    @NotBlank
    @Column(name = "Name", nullable = false)
    private String name;

    @Enumerated(EnumType.STRING)
    @Column(name = "Continent", nullable = false)
    private Continent continent;

    @NotBlank
    @Column(name = "Region", nullable = false)
    private String region;

    @Column(name = "SurfaceArea", nullable = false, precision = 10, scale = 2)
    private BigDecimal surface;

    @Column(name = "IndepYear")
    private Short indepyear;

    @Column(name = "population", nullable = false)
    private Long population;

    @Column(name = "LifeExpectancy", precision = 3, scale = 1)
    private BigDecimal lifexp;

    @Column(name = "GNP", precision = 10, scale = 2)
    private BigDecimal gnp;

    @Column(name = "GNPOld", precision = 10, scale = 2)
    private BigDecimal gnpold;

    @NotBlank
    @Column(name = "LocalName", nullable = false)
    private String localname;

    @Column(name = "GovernmentForm")
    private String government;

    @Column(name = "HeadofState")
    private String headstate;

    @Column(name = "Capital")
    private Long capital;

    @Column(name = "Code2")
    private String code2;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Continent getContinent() {
        return continent;
    }

    public void setContinent(Continent continent) {
        this.continent = continent;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public BigDecimal getSurface() {
        return surface;
    }

    public void setSurface(BigDecimal surface) {
        this.surface = surface;
    }

    public Short getIndepyear() {
        return indepyear;
    }

    public void setIndepyear(Short indepyear) {
        this.indepyear = indepyear;
    }

    public Long getPopulation() {
        return population;
    }

    public void setPopulation(Long population) {
        this.population = population;
    }

    public BigDecimal getLifexp() {
        return lifexp;
    }

    public void setLifexp(BigDecimal lifexp) {
        this.lifexp = lifexp;
    }

    public BigDecimal getGnp() {
        return gnp;
    }

    public void setGnp(BigDecimal gnp) {
        this.gnp = gnp;
    }

    public BigDecimal getGnpold() {
        return gnpold;
    }

    public void setGnpold(BigDecimal gnpold) {
        this.gnpold = gnpold;
    }

    public String getLocalname() {
        return localname;
    }

    public void setLocalname(String localname) {
        this.localname = localname;
    }

    public String getGovernment() {
        return government;
    }

    public void setGovernment(String government) {
        this.government = government;
    }

    public String getHeadstate() {
        return headstate;
    }

    public void setHeadstate(String headstate) {
        this.headstate = headstate;
    }

    public Long getCapital() {
        return capital;
    }

    public void setCapital(Long capital) {
        this.capital = capital;
    }

    public String getCode2() {
        return code2;
    }

    public void setCode2(String code2) {
        this.code2 = code2;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.code);
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
        final Country other = (Country) obj;
        return Objects.equals(this.code, other.code);
    }

    @Override
    public String toString() {
        return "Country{" + "code=" + code + ", name=" + name + ", continent=" + continent + ", region=" + region + ", surface=" + surface + ", indepyear=" + indepyear + ", population=" + population + ", lifexp=" + lifexp + ", gnp=" + gnp + ", gnpold=" + gnpold + ", localname=" + localname + ", government=" + government + ", headstate=" + headstate + ", capital=" + capital + ", code2=" + code2 + '}';
    }

}
