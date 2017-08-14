package domain;

import java.sql.Time;

/**
 * Created by Administrator on 2016/9/18.
 */
public class Train {
    String id;
    String start_station;
    String arrive_station;
    Time start_time;
    Time arrive_time;
    Time use_time;
    int length;
    int noseat_ticket;
    String body_style;
    String train_style;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStart_station() {
        return start_station;
    }

    public void setStart_station(String start_station) {
        this.start_station = start_station;
    }

    public String getArrive_station() {
        return arrive_station;
    }

    public void setArrive_station(String arrive_station) {
        this.arrive_station = arrive_station;
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

    public Time getUse_time() {
        return use_time;
    }

    public void setUse_time(Time use_time) {
        this.use_time = use_time;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getNoseat_ticket() {
        return noseat_ticket;
    }

    public void setNoseat_ticket(int noseat_ticket) {
        this.noseat_ticket = noseat_ticket;
    }

    public String getBody_style() {
        return body_style;
    }

    public void setBody_style(String body_style) {
        this.body_style = body_style;
    }

    public String getTrain_style() {
        return train_style;
    }

    public void setTrain_style(String train_style) {
        this.train_style = train_style;
    }
}
