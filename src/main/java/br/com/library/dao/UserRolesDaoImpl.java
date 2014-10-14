package br.com.library.dao;

import br.com.library.entity.UserRoles;
import br.com.library.enums.TypeUser;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Daniel Hideki
 * @since 22/08/2014
 */
public class UserRolesDaoImpl implements UserRolesDao{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public int insert(UserRoles userRoles) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        session.saveOrUpdate(userRoles);  
        tx.commit();  
        Serializable id = session.getIdentifier(userRoles);  
        session.close();  
        return (Integer) id;
    }

    @Override
    public List<UserRoles> getList() {
        Session session = sessionFactory.openSession();  
        @SuppressWarnings("unchecked")  
        List<UserRoles> userRolesList = session.createQuery("from UserRoles")  
          .list();  
        session.close();  
        return userRolesList;
    }

    @Override
    public int update(UserRoles userRoles) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        session.saveOrUpdate(userRoles);  
        tx.commit();
        Serializable id = session.getIdentifier(userRoles);  
        session.close();  
        return (Integer) id; 
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        UserRoles userRoles = (UserRoles) session.load(UserRoles.class, id);  
        session.delete(userRoles);  
        tx.commit();
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<UserRoles> findByQuery(TypeUser query) {
        Session session = sessionFactory.openSession();
        String sql = "from UserRoles where role =:query ";
        List<UserRoles> listObjects = session.createQuery(sql).setParameter("query", query).list();
         
        return listObjects;
    }
}
