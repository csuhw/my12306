package service;

import Dao.TrainDao;
import Dao.impl.TrainDaoImpl;
import domain.Train;

/**
 * Created by Administrator on 2016/9/19.
 */
public class TrainService {
    private TrainDao trainDao;

    public TrainService() {
        trainDao = new TrainDaoImpl();
    }

    public Train selectTrain(String id) {
        System.out.println("SERVICE");
        return trainDao.selectTrain(id);
    }

    public boolean addTrain(Train train) {
        return trainDao.addTrain(train);
    }

    public boolean deleteTrain(String id) {
        return trainDao.deleteTrainById(id);
    }

    public boolean updateTrain(Train train) {

        return trainDao.updateTrain(train);
    }
}
