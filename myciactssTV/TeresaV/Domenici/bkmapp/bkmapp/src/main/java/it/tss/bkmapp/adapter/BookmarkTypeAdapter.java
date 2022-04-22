/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.tss.bkmapp.adapter;

import it.tss.bkmapp.control.BookmarkStore;
import it.tss.bkmapp.entity.Bookmark;
import javax.inject.Inject;
import javax.json.JsonObject;
import javax.json.bind.adapter.JsonbAdapter;
import javax.ws.rs.NotFoundException;


/**
 *
 * @author tss
 */
public class BookmarkTypeAdapter implements JsonbAdapter<Bookmark, JsonObject>{
    
    @Inject
    BookmarkStore store;

    @Override
    public JsonObject adaptToJson(Bookmark entity) throws Exception {
        return entity.toJsonSlice();
    }

    @Override
    public Bookmark adaptFromJson(JsonObject json) throws Exception {
        if (!json.containsKey("id")) {
            return null;
        }
        return store.find(json.getJsonNumber("id").longValue()).orElseThrow(() -> new NotFoundException("UserTypeAdapter.adaptFromJson not found"));
    }

}

