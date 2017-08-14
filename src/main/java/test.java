import Dao.UserDao;
import Dao.impl.UserDaoImpl;
import domain.User;

/**
 * Created by Administrator on 2016/9/18.
 */
public class test {

    public static void main(String[] args) {
        UserDao userDao = new UserDaoImpl();
        User user = new User();
        user.setUsername("hzj");
        user.setPassword("321");
        user.setGender("女");
        user.setPhonenumber("13804780001");
        userDao.updateUser(user);


    }
}
