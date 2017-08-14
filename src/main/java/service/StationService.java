package service;

import Dao.StationDao;
import Dao.impl.StationDaoImpl;
import domain.Station;

import java.util.List;

/**
 * Created by Administrator on 2016/9/19.
 */
public class StationService {
    private StationDao stationDao;

    public StationService() {
        stationDao = new StationDaoImpl();

    }


    public Station getInformationById(int id) {
        //return stationDao.getInformationById(id);
        return null;
    }

    public Station getInformationByName(String name) {
        //  return stationDao.getInformationByName(name);
        return null;
    }

    public boolean updateStation(Station station) {
        return stationDao.updateStation(station);

    }

    public boolean deleteStation(int id) {
        //    return stationDao.deleteStation(id);
        return false;
    }

    public boolean insertStation(Station station) {
        //return stationDao.insertStation(station);
        return false;
    }

    public List<Station> showStation() {
        return stationDao.showAll();
    }


}
