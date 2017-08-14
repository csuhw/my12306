package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.Route;
import service.RouteService;

import java.util.List;

/**
 * Created by Administrator on 2016/9/20.
 */
public class RouteAction extends ActionSupport {
    public String train_id;
    public List<Route> routeList;
    public String stationMessage;//用户输入的车站名
    private Route route;
    private RouteService routeService;

    public RouteAction() {
        route = new Route();
        routeService = new RouteService();

    }

    public String selectRouteByTId() throws Exception {
        routeList = routeService.selectRouteByTId(train_id);
        return SUCCESS;

    }

    public String addRoute() throws Exception {
        System.out.println("进入action");
        if (routeService.addRoute(route)) {
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public Route getRoute() {
        return route;
    }

    public void setRoute(Route route) {
        this.route = route;
    }

    public RouteService getRouteService() {
        return routeService;
    }

    public void setRouteService(RouteService routeService) {
        this.routeService = routeService;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public List<Route> getRouteList() {
        return routeList;
    }

    public void setRouteList(List<Route> routeList) {
        this.routeList = routeList;
    }

    public String getStationMessage() {
        return stationMessage;
    }

    public void setStationMessage(String stationMessage) {
        this.stationMessage = stationMessage;
    }
}
