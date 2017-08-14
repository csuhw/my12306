package Dao.impl;

import Dao.RouteDao;
import domain.Route;
import domain.Train;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/9/19.
 */
public class RouteDaoImpl implements RouteDao {

    @Override
    public boolean addRoute(Route route) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "insert into route(id,train_id,station_name,start_time,arrive_time,length,stay_time," +
                "use_time,station_id) values(?,?,?,?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, route.getId());
            psmt.setString(2, route.getTrain_id());
            psmt.setString(3, route.getStation_name());
            psmt.setTime(4, route.getStart_time());
            psmt.setTime(5, route.getArrive_time());
            psmt.setInt(6, route.getLength());
            psmt.setTime(7, route.getStay_time());
            psmt.setTime(8, route.getUse_time());
            psmt.setInt(9, route.getStation_id());
            System.out.println("赋值完毕");
            psmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);

        }
        return false;
    }

    @Override
    public void deleteRouteById(int id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "delete from train where id='" + id + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateRoute(Route route) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "upTime route set station_name=?,start_time=?,arrive_time=?,length=?,stay_time=?" +
                "use_time=?,station_id=?  where id='" + route.getId() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, route.getStation_name());
            psmt.setTime(2, route.getStart_time());
            psmt.setTime(3, route.getArrive_time());
            psmt.setInt(4, route.getLength());
            psmt.setTime(5, route.getStay_time());
            psmt.setTime(6, route.getUse_time());
            psmt.setInt(7, route.getStation_id());
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);
        }
    }

    @Override
    public List<Route> selectRouteByTId(String train_id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select * from route where train_id=?";
        List<Route> routes = new ArrayList<Route>();
        System.out.println(train_id);
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, train_id);
            rs = psmt.executeQuery();

            while (rs.next()) {
                Route route = new Route();
                route.setId(rs.getInt("ID"));
                route.setTrain_id(train_id);
                route.setStation_name(rs.getString("STATION_NAME"));
                route.setStart_time(rs.getTime("START_TIME"));
                route.setArrive_time(rs.getTime("ARRIVE_TIME"));
                route.setUse_time(rs.getTime("USE_TIME"));
                route.setLength(rs.getInt("LENGTH"));
                route.setStay_time(rs.getTime("USE_TIME"));
                route.setStation_id(rs.getInt("STATION_ID"));

                routes.add(route);

            }
            return routes;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeResultSet(rs);
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);


        }

        return null;
    }

    @Override
    public List<Route> selectRouteByStaName(String station_name) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select * from route where station_name=?";
        List<Route> routes = new ArrayList<Route>();
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, station_name);
            rs = psmt.executeQuery();

            while (rs.next()) {
                Route route = new Route();
                route.setId(rs.getInt("ID"));
                route.setTrain_id(rs.getString("TRAIN_ID"));
                route.setStation_name(station_name);
                route.setStart_time(rs.getTime("START_TIME"));
                route.setArrive_time(rs.getTime("ARRIVE_TIME"));
                route.setUse_time(rs.getTime("USE_TIME"));
                route.setLength(rs.getInt("LENGTH"));
                route.setStay_time(rs.getTime("USE_TIME"));
                route.setStation_id(rs.getInt("STATION_ID"));
                routes.add(route);

            }
            return routes;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeResultSet(rs);
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);


        }
        return null;
    }

    public List<Train> searchTrain(String start_station, String arrive_station) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String sql = "select train_id from route where train_id in(select train_id from route where station_name=?) and station_name=?";
        List<Train> trains;

        try {
            trains = new ArrayList<Train>();
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, start_station);
            psmt.setString(2, arrive_station);
            rs = psmt.executeQuery();
            if (rs.next()) {
                Train train = new Train();
                train.setId(rs.getString("TRAIN_ID"));
                train.setStart_station(start_station);
                train.setArrive_station(arrive_station);
                trains.add(train);
            }
            return trains;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
