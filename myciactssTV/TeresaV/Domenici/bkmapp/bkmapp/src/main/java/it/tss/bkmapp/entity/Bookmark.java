/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.tss.bkmapp.entity;
import it.tss.bkmapp.adapter.UserTypeAdapter;
import java.util.Set;
import java.util.TreeSet;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.bind.annotation.JsonbTransient;

import javax.json.bind.annotation.JsonbTypeAdapter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import javax.ws.rs.core.UriBuilder;

/**
 *
 * @author tss
 */
@Entity
@Table(name="bookmark")
public class Bookmark extends SuperEntity{
    
    
    @JsonbTypeAdapter(UserTypeAdapter.class)
    @ManyToOne(optional = false)
    private User user;
    
    @NotBlank
    @Column(name="bkmark", nullable=false)
    private String bkmark;
    
    @Column(name="descr")
    @Size(max=256)
    private String descr;
    
    @Column(name="shared")
    private boolean flag=false;
    
    @JsonbTransient
    @ManyToMany
    @JoinTable(name = "bkm_tag",
            joinColumns = @JoinColumn(name = "bkm_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    
    private Set<Tag> tags = new TreeSet<>();
    

    public JsonObject toJsonSlice() {
        return Json.createObjectBuilder()
                .add("id", this.id)
                .add("bkmark", this.bkmark)
                .build();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getBkmark() {
        return bkmark;
    }

    public void setBkmark(String link) {
        this.bkmark = bkmark;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }
    
  
    @Override
    public String toString() {
        return "Bookmark{" + "user=" + user + ", bkmark=" + bkmark + ", descr=" + descr + ", flag=" + flag + ", tags=" + tags + '}';
    }
    
    
    
    
   }
