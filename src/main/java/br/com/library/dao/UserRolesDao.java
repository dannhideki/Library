package br.com.library.dao;

import br.com.library.entity.UserRoles;
import br.com.library.enums.TypeUser;
import java.util.List;

/**
 *
 * @author Daniel Hideki
 * @since 22/08/2014
 */
public interface UserRolesDao extends GenericDao<UserRoles> {

    public List<UserRoles> findByQuery(TypeUser query);
}
