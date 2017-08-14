package Dao;

import domain.Seat;

import java.util.List;

/**
 * Created by mac on 16-9-14.
 */
public interface SeatDao {

    List<Seat> getSeatListByTrainAndCarNo(String train, Integer carNo);

    Seat getSeatBySeatID(String seatID);

    void updateSeat(Seat seat);
}
