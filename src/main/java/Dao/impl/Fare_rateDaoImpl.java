package Dao.impl;

import Dao.Fare_rateDao;
import domain.Fare_rate;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Fare_rateDaoImpl implements Fare_rateDao {
    @Override
    public void updateFare_rate(Fare_rate fare_rate) {

        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "update fare_rate set id=?,type=?,fare_rate=?,proportion=? where id='" + fare_rate.getId() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, fare_rate.getId());
            psmt.setString(2, fare_rate.getType());
            psmt.setString(3, fare_rate.getFare_rate());
            psmt.setString(4, fare_rate.getProportion());
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);
        }
    }

    @Override
    public Fare_rate selectFare_rate(int id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select * from fare_rate where id=?";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, id);
            rs = psmt.executeQuery();
            if (rs.next()) {
                Fare_rate fare_rate = new Fare_rate();
                fare_rate.setType(rs.getString("TYPE"));
                fare_rate.setFare_rate(rs.getString("FARE_RATE"));
                fare_rate.setProportion(rs.getString("PROPORTION"));
                return fare_rate;
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
