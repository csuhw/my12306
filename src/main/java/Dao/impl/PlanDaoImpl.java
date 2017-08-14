package Dao.impl;


import Dao.PlanDao;
import domain.Plan;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kidyang on 2016/9/19.
 */
public class PlanDaoImpl implements PlanDao {

    @Override
    public void addPlan(Plan plan) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "insert into plan(id,train_id,carriage_id,compare,station) values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, plan.getId());
            psmt.setString(2, plan.getTrain_id());
            psmt.setInt(3, plan.getCarriage_id());
            psmt.setString(4, plan.getCompare());
            psmt.setString(5, plan.getStation());
            psmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);

        }
    }

    @Override
    public void deletePlanById(int id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "delete from plan where id='" + id + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updatePlan(Plan plan) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "update plan set id=?,train_id=?,carriage_id=?,compare=?,station=? where id='" + plan.getId() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, plan.getId());
            psmt.setString(2, plan.getTrain_id());
            psmt.setInt(3, plan.getCarriage_id());
            psmt.setString(4, plan.getCompare());
            psmt.setString(5, plan.getStation());
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);
        }
    }

    @Override
    public List<Plan> selectPlanByTrain_id(String train_id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select * from plan where train_id=?";
        List<Plan> planList = new ArrayList<Plan>();
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, train_id);
            rs = psmt.executeQuery();
            while (rs.next()) {
                Plan plan = new Plan();
                plan.setId(rs.getInt("ID"));
                plan.setTrain_id(train_id);
                plan.setCarriage_id(rs.getInt("CARRIAGE_ID"));
                plan.setCompare(rs.getString("COMPARE"));
                plan.setStation(rs.getString("STATION"));
                planList.add(plan);

            }
            return planList;
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
