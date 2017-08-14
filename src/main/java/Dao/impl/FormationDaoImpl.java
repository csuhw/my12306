package Dao.impl;

import Dao.FormationDao;
import domain.Formation;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FormationDaoImpl implements FormationDao {

    @Override
    public void addFormation(Formation formation) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "insert into formation(id,train_id,carriage_id,seat_type,seat_num,carriage_type) values(?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, formation.getId());
            psmt.setString(2, formation.getTrain_id());
            psmt.setInt(3, formation.getCarriage_id());
            psmt.setString(4, formation.getSeat_type());
            psmt.setInt(5, formation.getSeat_num());
            psmt.setString(6, formation.getCarriage_type());
            psmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);

        }

    }

    @Override
    public void deleteFormationById(int id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "delete from formation where id='" + id + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateFormation(Formation formation) {

        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "update formation train_id=?,carriage_id=?,seat_type=?,seat_num=?,carriage_type=? where id='" + formation.getId() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, formation.getTrain_id());
            psmt.setInt(2, formation.getCarriage_id());
            psmt.setString(3, formation.getSeat_type());
            psmt.setInt(4, formation.getSeat_num());
            psmt.setString(5, formation.getCarriage_type());
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);
        }
    }

    @Override
    public List<Formation> selectFormation(String id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select * from formation where train_id=?";
        List<Formation> formations = new ArrayList<Formation>();
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, id);
            rs = psmt.executeQuery();
            while (rs.next()) {
                Formation formation = new Formation();
                formation.setId(rs.getInt("ID"));
                formation.setTrain_id(id);
                formation.setCarriage_id(rs.getInt("CARRIAGE_ID"));
                formation.setSeat_type(rs.getString("SEAT_TYPE"));
                formation.setSeat_num(rs.getInt("SEAT_NUM"));
                formation.setCarriage_type(rs.getString("CARRIAGE_TYPE"));
                formations.add(formation);
            }
            return formations;
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
