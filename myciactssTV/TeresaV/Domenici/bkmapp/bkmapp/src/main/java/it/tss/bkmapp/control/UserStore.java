/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.tss.bkmapp.control;

import it.tss.bkmapp.SecurityEncoding;
import it.tss.bkmapp.boundary.Credential;
import it.tss.bkmapp.entity.User;
import java.util.List;
import java.util.Optional;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.PersistenceContext;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.transaction.Transactional;

/**
 *
 * @author tss
 */
@RequestScoped
@Transactional(Transactional.TxType.REQUIRED)
public class UserStore {

    @PersistenceContext
    EntityManager em;

    @Inject
    BookmarkStore bookmarkstore;

    public List<User> all() {
        return em.createQuery("select e from User e order by e.lastname", User.class)
                .getResultList();
    }

    public List<User> allPaginated(int page, int size) {
        return em.createQuery("select e from User e order by e.lastname", User.class)
                .setFirstResult((page - 1) * size)
                .setMaxResults(size)
                .getResultList();
    }

    public Optional<User> find(Long id) {
        User found = em.find(User.class, id);
        return found == null ? Optional.empty() : Optional.of(found);
    }

    public User create(User entity) {
        entity.setPwd(SecurityEncoding.shaHash(entity.getPwd()));
        return save(entity);
    }

    public User save(User entity) {
        User saved = em.merge(entity);
        return saved;
    }

    public void delete(Long id) {
        bookmarkstore.deleteByUser(id);
        em.remove(em.getReference(User.class, id));
    }

    public Optional<User> login(Credential credential) {
        try {
            return Optional.of(em.createQuery("select e from User e where e.email= :usr and e.pwd= :pwd", User.class)
                    .setParameter("usr", credential.usr)
                    .setParameter("pwd", SecurityEncoding.shaHash(credential.pwd))
                    .getSingleResult());
        } catch (NoResultException ex) {
            return Optional.empty();
        }
    }
}
