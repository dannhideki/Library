package br.com.library.service;

import br.com.library.entity.User;
import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public interface UserService extends GenericService<User>{
    public User getById(int id);
}
