/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.tss.bkmapp.control;

import it.tss.bkmapp.entity.Bookmark;
import it.tss.bkmapp.entity.Tag;
import java.util.List;
import java.util.Optional;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.ws.rs.NotFoundException;

/**
 *
 * @author tss
 */
@RequestScoped
@Transactional(Transactional.TxType.REQUIRED)
public class BookmarkStore {
    
    @PersistenceContext
    EntityManager em;
    
    @Inject
    TagStore tagStore;
    
        
    public List<Bookmark> all() {
        return em.createQuery("select e from Bookmark e order by e.bkmark ASC", Bookmark.class)
                .getResultList();
    }

    public Optional<Bookmark> find(Long id) {
        Bookmark found = em.find(Bookmark.class, id);
        return found == null ? Optional.empty() : Optional.of(found);
    }

    public List<Bookmark> byUser(Long userId) {
        return em.createQuery("select e from Bookmark e where e.user.id= :userId order by e.user ASC", Bookmark.class)
                .setParameter("userId", userId)
                .getResultList();
    }

    public Bookmark save(Bookmark entity) {
        return em.merge(entity);
    }

    public void addTag(Bookmark found, String tag) {
        Bookmark toupdate = find(found.getId()).get();
        Tag saved = tagStore.saveIfNotExists(tag);
        toupdate.getTags().add(saved);
        save(toupdate);
    }

    public void removeTag(Long id, String tag) {
        final Bookmark toupdate = find(id).get();
        Optional<Tag> found = tagStore.byName(tag);
        if (found.isPresent()) {
            toupdate.getTags().remove(found.get());
            save(toupdate);
        }
    }

    public void deleteByUser(Long id) {
        byUser(id).stream().map(Bookmark::getId).forEach(this::delete);
    }
    
   public void delete(Long id){
        Bookmark found = find(id).orElseThrow(() -> new NotFoundException());
        em.remove(found);
    }

    
}
