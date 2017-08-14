package Dao.impl;

import Dao.UserDao;
import domain.User;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2016/9/18.
 */
public class UserDaoImpl implements UserDao {

    @Override
    public User getUserByUsernameAndPwd(String username, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from user where username=? and password=?";
        try {
            conn = DBUtils.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setUsername(username);
                user.setGender(rs.getString("GENDER"));
                user.setIdnumber(rs.getString("IDNUMBER"));
                user.setPhonenumber(rs.getString("PHONENUMBER"));
                System.out.println(user.getPhonenumber());
                user.setUserId(rs.getString("USERID"));
                user.setXingming(rs.getString("XINGMING"));
                user.setPassword(password);
                return user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeResultSet(rs);
            DBUtils.closeStatement(pstmt);
            DBUtils.closeConnection(conn);
        }
        return null;
    }

    @Override
    public void addUser(User user) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "insert into user(username,password,xingming,gender,idnumber,phonenumber) values(?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, user.getUsername());
            psmt.setString(2, user.getPassword());
            psmt.setString(3, user.getXingming());
            psmt.setString(4, user.getGender());
            psmt.setString(5, user.getIdnumber());
            psmt.setString(6, user.getPhonenumber());
            psmt.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            {
                DBUtils.closeStatement(psmt);
                DBUtils.closeConnection(conn);
            }
        }
    }

    @Override
    public void updateUser(User user) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "update user set xingming=? ,gender=? ,idnumber=?,phonenumber=? where username='" + user.getUsername() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, user.getXingming());
            psmt.setString(2, user.getGender());
            psmt.setString(3, user.getIdnumber());
            psmt.setString(4, user.getPhonenumber());
            psmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);
        }

    }
}
