package br.com.library.interfaces;

import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 08/09/2014
 */
public interface Observer<T> {
    public void update(List<T> t);
}
