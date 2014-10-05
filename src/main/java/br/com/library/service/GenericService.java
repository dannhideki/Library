package br.com.library.service;

import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public interface GenericService<T> {
    
    public int insert(T t);

    public List<T> getList();

    public int update(T t);

    public void delete(int id);

}
