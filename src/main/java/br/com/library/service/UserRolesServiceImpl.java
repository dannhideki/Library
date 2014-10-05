package br.com.library.service;

import br.com.library.dao.UserRolesDao;
import br.com.library.entity.UserRoles;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Daniel Hideki
 * @since 22/08/2014
 */
public class UserRolesServiceImpl implements UserRolesService{

    @Autowired
    private UserRolesDao userRolesDao;
    
    @Override
    public int insert(UserRoles userRoles) {
        return userRolesDao.insert(userRoles);
    }

    @Override
    public List<UserRoles> getList() {
        return userRolesDao.getList();
    }

    @Override
    public int update(UserRoles userRoles) {
        return userRolesDao.update(userRoles);
    }

    @Override
    public void delete(int id) {
        userRolesDao.delete(id);
    }

    public UserRolesDao getUserRolesDao() {
        return userRolesDao;
    }

    public void setUserRolesDao(UserRolesDao userRolesDao) {
        this.userRolesDao = userRolesDao;
    }

}
