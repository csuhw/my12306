package Dao;

import domain.User;

/**
 * Created by Administrator on 2017/1/5.
 */
public interface UserDao {
    User getUserByUsernameAndPwd(String username, String password);

    void addUser(User user);

    void updateUser(User user);
}
