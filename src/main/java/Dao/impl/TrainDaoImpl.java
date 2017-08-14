package Dao.impl;

import Dao.TrainDao;
import domain.Train;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2016/9/18.
 */
public class TrainDaoImpl implements TrainDao {

    @Override
    public boolean addTrain(Train train) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "insert into train(id,start_station,arrive_station,start_time,arrive_time,use_time,length,noseat_ticket," +
                "body_style,train_style) values(?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, train.getId());
            psmt.setString(2, train.getStart_station());
            psmt.setString(3, train.getArrive_station());
            psmt.setTime(4, train.getStart_time());
            psmt.setTime(5, train.getArrive_time());
            psmt.setInt(6, train.getLength());
            psmt.setInt(7, train.getNoseat_ticket());
            psmt.setString(8, train.getBody_style());
            psmt.setString(9, train.getTrain_style());
            psmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);

        }

    }

    @Override
    public boolean deleteTrainById(String id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "delete from train where id='" + id + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.executeUpdate();
            return true;

        } catch (SQLException e) {

            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateTrain(Train train) {

        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "update train set start_station=?,arrive_station=?,start_time=?,arrive_time=?,use_time=?,length=?,noseat_ticket=?,body_style=?," +
                "train_style=? where id='" + train.getId() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            System.out.println(train.getId());
            psmt.setString(1, train.getStart_station());
            psmt.setString(2, train.getArrive_station());
            System.out.println(train.getArrive_station());
            psmt.setTime(3, train.getStart_time());
            psmt.setTime(4, train.getArrive_time());
            psmt.setTime(5, train.getUse_time());
            System.out.println(train.getUse_time());
            psmt.setInt(6, train.getLength());
            psmt.setInt(7, train.getNoseat_ticket());
            psmt.setString(8, train.getBody_style());
            psmt.setString(9, train.getTrain_style());
            System.out.println("赋值完毕");
            psmt.executeUpdate();
            System.out.println("执行完数据库操作");
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库操作失败");
            return false;
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);
        }
    }

    @Override
    public Train selectTrain(String id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select * from train where id=?";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, id);
            rs = psmt.executeQuery();
            if (rs.next()) {
                Train train = new Train();
                train.setId(id);
                train.setStart_station(rs.getString("START_STATION"));
                train.setArrive_station(rs.getString("ARRIVE_STATION"));
                train.setStart_time(rs.getTime("START_TIME"));
                train.setArrive_time(rs.getTime("ARRIVE_TIME"));
                train.setUse_time(rs.getTime("USE_TIME"));
                train.setLength(rs.getInt("LENGTH"));
                train.setNoseat_ticket(rs.getInt("NOSEAT_TICKET"));
                train.setBody_style(rs.getString("BODY_STYLE"));
                train.setTrain_style(rs.getString("TRAIN_STYLE"));
                return train;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeResultSet(rs);
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);


        }

        return null;
    }
}
