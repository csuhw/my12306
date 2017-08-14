package service;

import Dao.RouteDao;
import Dao.impl.RouteDaoImpl;
import domain.Train;

import java.util.List;

/**
 * Created by Administrator on 2016/9/21.
 */
public class TicketService {
    private RouteDao routeDao;
    private List<Train> trains;

    public List<Train> searchTrain(String start_station, String arrive_station) {
        routeDao = new RouteDaoImpl();
        trains = routeDao.searchTrain(start_station, arrive_station);
        return trains;
    }

    public RouteDao getRouteDao() {
        return routeDao;
    }

    public void setRouteDao(RouteDao routeDao) {
        this.routeDao = routeDao;
    }

    public List<Train> getTrains() {
        return trains;
    }

    public void setTrains(List<Train> trains) {
        this.trains = trains;
    }
}
