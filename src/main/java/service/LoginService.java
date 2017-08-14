package service;

import Dao.UserDao;
import Dao.impl.UserDaoImpl;
import domain.User;

/**
 * Created by Administrator on 2016/9/21.
 */
public class LoginService {
    UserDao userDao;
    User user;

    public User LoginByNameAndPwd(String username, String password) {
        user = new User();
        userDao = new UserDaoImpl();
        user = userDao.getUserByUsernameAndPwd(username, password);
        System.out.println(user.getPhonenumber());
        System.out.println(user.getUsername());
        return user;
    }

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
