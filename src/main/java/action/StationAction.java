package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.Station;
import service.StationService;

import java.util.List;

/**
 * Created by Administrator on 2016/9/19.
 */
public class StationAction extends ActionSupport {
    public List<Station> stationList;
    public String stationMessage;//用户输入的车站名
    private Station station;
    private StationService stationService;

    public StationAction() {
        station = new Station();
        stationService = new StationService();

    }

    public String getInformationByName() throws Exception {
        station = stationService.getInformationByName(stationMessage);
        return SUCCESS;

    }

    public String showAllStation() throws Exception {
        stationList = stationService.showStation();
        return SUCCESS;
    }

    public String updateStation() throws Exception {
        boolean result = stationService.updateStation(station);
        if (result) {
            // session.put("updateStation",station);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String insertStation() throws Exception {
        if (stationService.insertStation(station)) {
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public Station getStation() {
        return station;
    }

    public void setStation(Station station) {
        this.station = station;
    }

    public StationService getStationService() {
        return stationService;
    }

    public void setStationService(StationService stationService) {
        this.stationService = stationService;
    }

    public List<Station> getStationList() {
        return stationList;
    }

    public void setStationList(List<Station> stationList) {
        this.stationList = stationList;
    }

    public String getStationMessage() {
        return stationMessage;
    }

    public void setStationMessage(String stationMessage) {
        this.stationMessage = stationMessage;
    }
}
