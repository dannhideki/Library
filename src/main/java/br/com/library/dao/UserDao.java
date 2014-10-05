package br.com.library.dao;

import br.com.library.entity.User;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public interface UserDao extends GenericDao<User> {
    public User getById(int id);
}
