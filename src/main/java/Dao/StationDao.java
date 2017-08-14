package Dao;

import domain.Station;

import java.util.List;

/**
 * Created by 一翎飞仙 on 2016/9/19.
 */
public interface StationDao {
    boolean addStation(Station station);

    boolean delStation(int id);

    boolean updateStation(Station station);

    Station selectStationByStationNumber(int id);

    Station selectStationByName(String name);

    List<Station> showAll();
}
