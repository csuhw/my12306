package domain;

import java.sql.Time;

/**
 * Created by Administrator on 2016/9/18.
 */
public class Route {
    int id;
    String train_id;
    String station_name;
    Time start_time;
    Time arrive_time;
    int length;
    Time stay_time;
    Time use_time;
    int station_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public String getStation_name() {
        return station_name;
    }

    public void setStation_name(String station_name) {
        this.station_name = station_name;
    }

    public Time getStart_time() {
        return start_time;
    }

    public void setStart_time(Time start_time) {
        this.start_time = start_time;
    }

    public Time getArrive_time() {
        return arrive_time;
    }

    public void setArrive_time(Time arrive_time) {
        this.arrive_time = arrive_time;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public Time getStay_time() {
        return stay_time;
    }

    public void setStay_time(Time stay_time) {
        this.stay_time = stay_time;
    }

    public Time getUse_time() {
        return use_time;
    }

    public void setUse_time(Time use_time) {
        this.use_time = use_time;
    }

    public int getStation_id() {
        return station_id;
    }

    public void setStation_id(int station_id) {
        this.station_id = station_id;
    }
}
