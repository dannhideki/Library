package br.com.library.dao;

import br.com.library.entity.Book;
import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public interface BookDao extends GenericDao<Book>{
    public Book getById(int id);
    public List<Book> findByQuery(String query); 
}
