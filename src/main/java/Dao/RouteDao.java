package Dao;

import domain.Route;
import domain.Train;

import java.util.List;

/**
 * Created by Administrator on 2016/9/19.
 */
public interface RouteDao {
    boolean addRoute(Route route);

    void deleteRouteById(int id);

    void updateRoute(Route route);

    List<Route> selectRouteByTId(String train_id);

    List<Route> selectRouteByStaName(String station_name);

    List<Train> searchTrain(String start_station, String arrive_station);
}
