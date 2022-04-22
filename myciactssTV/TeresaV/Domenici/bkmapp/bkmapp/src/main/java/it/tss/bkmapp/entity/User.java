/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.tss.bkmapp.entity;

import it.tss.bkmapp.boundary.UsersResource;
import javax.json.Json;
import javax.json.JsonObject;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import javax.ws.rs.core.UriBuilder;


/**
 *
 * @author tss
 */
@Entity
@Table(name = "user")
public class User extends SuperEntity{
    
    @NotBlank
    @Column(name="lastname", nullable= false)
    private String lastname;
    
    @NotBlank
    @Column(name="firstname", nullable= false)
    private String firstname;
    
    @NotBlank
    @Email
    @Column(nullable=false)
    private String email;
    
    @NotBlank
    @Size(min=4)
    @Column(nullable = false)
    private String pwd;
    
    
    public JsonObject toJsonSlice(){
        return Json.createObjectBuilder()
                .add("id", this.id)
                .add("lastname", this.lastname)
                .build();
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public String toString() {
        return "User{" + "lastname=" + lastname + ", firstname=" + firstname + ", email=" + email + ", pwd=" + pwd + '}';
    }

    
    
    
}
