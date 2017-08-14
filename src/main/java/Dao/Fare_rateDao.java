package Dao;

import domain.Fare_rate;

/**
 * Created by kidyang on 2016/9/19.
 */
public interface Fare_rateDao {
    void updateFare_rate(Fare_rate fare_rate);

    Fare_rate selectFare_rate(int id);
}
