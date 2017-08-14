package service;

import Dao.RouteDao;
import Dao.impl.RouteDaoImpl;
import domain.Route;

import java.util.List;

/**
 * Created by Administrator on 2016/9/20.
 */
public class RouteService {
    private RouteDao routeDao;

    public boolean addRoute(Route route) {
        routeDao = new RouteDaoImpl();
        return routeDao.addRoute(route);
    }

    public List<Route> selectRouteByTId(String train_id) {
        routeDao = new RouteDaoImpl();
        System.out.println(train_id);
        System.out.println(routeDao.selectRouteByTId(train_id));
        return routeDao.selectRouteByTId(train_id);
    }
}
