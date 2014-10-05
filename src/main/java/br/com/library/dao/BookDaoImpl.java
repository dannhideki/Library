package br.com.library.dao;

import br.com.library.entity.Book;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public class BookDaoImpl implements BookDao{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Book> findByQuery(String query) {
        Session session = sessionFactory.openSession();
        List<Book> listObjects = session.createQuery(query).list();
        return listObjects;
    }

    @Override
    public List getList() {
        Session session = sessionFactory.openSession();  
        @SuppressWarnings("unchecked")  
        List<Book> bookList = session.createQuery("from Book")  
          .list();  
        session.close();  
        return bookList;
    }

    @Override
    public int insert(Book book) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        session.saveOrUpdate(book);  
        tx.commit();  
        Serializable id = session.getIdentifier(book);  
        session.close();  
        return (Integer) id;
    }

    @Override
    public Book getById(int id) {
        Session session = sessionFactory.openSession();  
        Book book = (Book) session.load(Book.class, id);  
        return book;
    }

    @Override
    public int update(Book book) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        session.saveOrUpdate(book);  
        tx.commit();
        Serializable id = session.getIdentifier(book);  
        session.close();  
        return (Integer) id; 
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.openSession();  
        Transaction tx = session.beginTransaction();  
        Book book = (Book) session.load(Book.class, id);  
        session.delete(book);  
        tx.commit();
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
