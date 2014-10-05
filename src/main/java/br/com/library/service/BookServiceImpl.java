package br.com.library.service;

import br.com.library.dao.BookDao;
import br.com.library.entity.Book;
import br.com.library.interfaces.Observer;
import br.com.library.interfaces.Subject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public class BookServiceImpl implements BookService, Subject {

    @Autowired
    private BookDao bookDao;

    private List<Observer> observers = new ArrayList<Observer>();

    @Override
    public int insert(Book t) {
        return bookDao.insert(t);
    }

    @Override
    public List<Book> getList() {
        List<Book> books = bookDao.getList();
        notifyObservers(books);
        return books;
    }

    @Override
    public Book getById(int id) {
        return bookDao.getById(id);
    }

    @Override
    public int update(Book t) {
        bookDao.update(t);
        return bookDao.getById(t.getId()).getId();
    }

    @Override
    public void delete(int id) {
        bookDao.delete(id);
    }

    @Override
    public List<Book> findByQuery(String query) {
        return bookDao.findByQuery(query);
    }

    public BookDao getBookDao() {
        return bookDao;
    }

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    public void notifyObservers(List<Book> books) {
        for (Observer o : observers) {
            o.update(books);
        }
    }

    public void registerObserver(Observer o) {
        observers.add(o);
    }
}
