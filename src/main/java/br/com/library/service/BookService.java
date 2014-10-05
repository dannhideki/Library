package br.com.library.service;

import br.com.library.entity.Book;
import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public interface BookService extends GenericService<Book>{
    public List<Book> findByQuery(String query);
    public Book getById(int id);
}
