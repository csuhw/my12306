package Dao;

import domain.Train;

/**
 * Created by Administrator on 2016/9/18.
 */
public interface TrainDao {
    boolean addTrain(Train train);

    boolean deleteTrainById(String id);

    boolean updateTrain(Train train);

    Train selectTrain(String id);
}
