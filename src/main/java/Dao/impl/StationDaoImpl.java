package Dao.impl;

import Dao.StationDao;
import domain.Station;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 一翎飞仙 on 2016/9/19.
 */
public class StationDaoImpl implements StationDao {

    @Override
    public boolean addStation(Station station) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "insert into station(id,name,pinyin,bureau,level,administrative,address," +
                ") values(?,?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, station.getId());
            psmt.setString(2, station.getName());
            psmt.setString(3, station.getPinyin());
            psmt.setString(4, station.getBureau());
            psmt.setInt(5, station.getLevel());
            psmt.setString(6, station.getAdministrative());
            psmt.setString(7, station.getAddress());
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
    public boolean delStation(int id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        String sql = "delete from station where id='" + id + "'";
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
    public boolean updateStation(Station station) {
        Connection conn = null;
        PreparedStatement psmt = null;

        String sql = "update station set pinyin=?,bureau=?,level=?" +
                ",administrative=?,address=?where id='" + station.getId() + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            System.out.println(station.getId());
            psmt.setString(1, station.getPinyin());
            System.out.println(station.getPinyin());
            psmt.setString(2, station.getBureau());
            System.out.println(station.getBureau());
            psmt.setInt(3, station.getLevel());
            System.out.println(station.getLevel());
            System.out.println(station.getAdministrative());
            psmt.setString(4, station.getAdministrative());
            psmt.setString(5, station.getAddress());
            System.out.println(station.getAddress());
            psmt.executeUpdate();
            System.out.println("成功修改");
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("修改失败");
            return false;
        } finally {
            DBUtils.closeStatement(psmt);
            DBUtils.closeConnection(conn);

        }
    }

    @Override
    public Station selectStationByStationNumber(int id) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        Station station = new Station();
        String sql = "SELECT * FROM station WHERE id='" + id + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, id);
            rs = psmt.executeQuery();
            if (rs.next()) {
                station.setId(rs.getInt("id"));
                station.setName(rs.getString("name"));
                station.setPinyin(rs.getString("pinyin"));
                station.setBureau(rs.getString("bureau"));
                station.setLevel(rs.getInt("level"));
                station.setAdministrative(rs.getString("administrative"));
                station.setAddress(rs.getString("address"));
                return station;
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

    @Override
    public Station selectStationByName(String name) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        Station station = new Station();
        String sql = "SELECT * FROM station WHERE name='" + name + "'";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(2, name);
            rs = psmt.executeQuery();
            if (rs.next()) {
                station.setId(rs.getInt("id"));
                station.setName(rs.getString("name"));
                station.setPinyin(rs.getString("pinyin"));
                station.setBureau(rs.getString("bureau"));
                station.setLevel(rs.getInt("level"));
                station.setAdministrative(rs.getString("administrative"));
                station.setAddress(rs.getString("address"));
                return station;
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

    @Override
    public List<Station> showAll() {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        List<Station> stations = new ArrayList<Station>();
        Station station;
        String sql = "select * from station ";
        try {
            conn = DBUtils.getConnection();
            psmt = conn.prepareStatement(sql);
            ;
            rs = psmt.executeQuery();
            while (rs.next()) {
                station = new Station();
                station.setId(rs.getInt("id"));
                station.setName(rs.getString("name"));
                station.setPinyin(rs.getString("pinyin"));
                station.setBureau(rs.getString("bureau"));
                station.setLevel(rs.getInt("level"));
                station.setAdministrative(rs.getString("ADMINISTRATIVE"));
                station.setAddress(rs.getString("address"));
                stations.add(station);
            }
            return stations;
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
