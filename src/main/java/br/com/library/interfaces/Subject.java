package br.com.library.interfaces;

import br.com.library.entity.Book;
import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 08/09/2014
 */
public interface Subject {
    public void notifyObservers(List<Book> book);
}
