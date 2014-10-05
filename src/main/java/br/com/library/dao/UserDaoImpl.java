package br.com.library.dao;

import br.com.library.entity.User;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public class UserDaoImpl implements UserDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    @Transactional
    public int insert(User user) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        session.saveOrUpdate(user);  
        tx.commit();  
        Serializable id = session.getIdentifier(user);  
        session.close();  
        return (Integer) id;  
    }

    @Override
    public List<User> getList() {
        Session session = sessionFactory.openSession();  
        @SuppressWarnings("unchecked")  
        List<User> userList = session.createQuery("from User")  
          .list();  
        session.close();  
        return userList;
    }

    @Override
    public User getById(int id) {
        Session session = sessionFactory.openSession();  
        User user = (User) session.load(User.class, id);  
        return user; 
    }

    @Override
    public int update(User user) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        session.saveOrUpdate(user);  
        tx.commit();  
        Serializable id = session.getIdentifier(user);  
        session.close();  
        return (Integer) id; 
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        User user = (User) session.load(User.class, id);  
        session.delete(user);  
        tx.commit();  
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
