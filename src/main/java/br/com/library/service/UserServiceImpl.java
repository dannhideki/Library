package br.com.library.service;

import br.com.library.dao.UserDao;
import br.com.library.entity.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;
    
    @Override
    public int insert(User user) {
        return userDao.insert(user);
    }

    @Override
    public List<User> getList() {
        return userDao.getList();
    }

    @Override
    public User getById(int id) {
        return userDao.getById(id);
    }

    @Override
    public int update(User user) {
        return userDao.update(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

}
