/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.bind.annotation.JsonbTransient;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import javax.ws.rs.core.UriBuilder;
import boundary.UsersResources;
import javax.persistence.EnumType;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Teresa Vercellino
 */
@Entity
@Table(name = "user")
public class User extends BaseEntity {

    @NotBlank
    @Column(name = "firstname", nullable = false)
    private String firstName;

    @NotBlank
    @Column(name = "lastname", nullable = false)
    private String lastName;

    @NotBlank
    @Email
    @Column(nullable = false, unique = true)
    private String email;

    @NotBlank
    @Size(min = 4)
    @Column(nullable = false)
    private String pwd;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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
        return "User{" + "firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", pwd=" + pwd + '}';
    }

    UnsupportedOperationException getError() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public JsonObject toJsonSlice() {

        return Json.createObjectBuilder()
                .add("id", this.id)
                .add("nome", this.firstName)
                .add("cognome", this.lastName)
                .add("email", this.email)
                .build();
    }

    public JsonObject toJsonSliceName() {

        return Json.createObjectBuilder()
                .add("firstname", this.firstName)
                .add("link", UriBuilder.fromResource(UsersResources.class)
                        .path(UsersResources.class, "find")
                        .build(this.id).toString())
                .build();
    }

}
