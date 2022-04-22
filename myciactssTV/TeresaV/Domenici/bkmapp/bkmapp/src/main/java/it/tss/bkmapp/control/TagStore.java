/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.tss.bkmapp.control;

import it.tss.bkmapp.entity.Bookmark;
import it.tss.bkmapp.entity.Tag;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

/**
 *
 * @author tss
 */
@RequestScoped
@Transactional(Transactional.TxType.REQUIRED)
public class TagStore {

    @PersistenceContext
    EntityManager em;
    
    @Inject
    BookmarkStore bookmarkstore;

    public List<Tag> all() {
        return em.createQuery("select e from Tag e order by e.name")
                .getResultList();
    }

    public Tag save(Tag entity) {
        return em.merge(entity);
    }

    public Tag saveIfNotExists(String tag) {
        Optional<Tag> found = byName(tag);
        if (found.isPresent()) {
            return found.get();
        }
        return this.save(new Tag(tag));
    }

    public Optional<Tag> find(Long id) {
        Tag found = em.find(Tag.class, id);
        return found == null ? Optional.empty() : Optional.of(found);
    }

    public Optional<Tag> byName(String tag) {
        try {
            return Optional.of(em.createQuery("select e from Tag e where TRIM(LOWER(e.name))= :name", Tag.class)
                    .setParameter("name", tag.trim().toLowerCase())
                    .getSingleResult());
        } catch (NoResultException ex) {
            return Optional.empty();
        }
    }

    public Set<Tag> byBookmark(Long bookmarkId) {
        return em.createQuery("select e from Bookmark e left join fetch e.tags where e.id= :id ", Bookmark.class)
                .setParameter("id", bookmarkId)
                .getSingleResult()
                .getTags();

    }

}
