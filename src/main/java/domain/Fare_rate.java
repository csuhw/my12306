package domain;

//import java.io.Serializable;
//import java.math.BigDecimal;

public class Fare_rate {
    int id;
    String type;
    String fare_rate;
    String proportion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getProportion() {
        return proportion;
    }

    public void setProportion(String proportion) {
        this.proportion = proportion;
    }

    public String getFare_rate() {
        return fare_rate;
    }

    public void setFare_rate(String fare_rate) {
        this.fare_rate = fare_rate;
    }
}

