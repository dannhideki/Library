package br.com.library.controller;

import br.com.library.entity.Book;
import br.com.library.interfaces.Matches;

/**
 *
 * @author Daniel Hideki
 * @since 18/08/2014
 */
public class MatchesTitle implements Matches{

    @Override
    public boolean compare(Book b1, Book b2) {
        return b1.getTitle().equalsIgnoreCase(b2.getTitle());
    }

}
