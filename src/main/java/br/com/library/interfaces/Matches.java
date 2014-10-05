package br.com.library.interfaces;

import br.com.library.entity.Book;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public interface Matches {

    public boolean compare(Book b1, Book b2);
}
