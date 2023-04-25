package model;

import java.io.Serializable;
public class WaterStat implements Serializable {

    private Long Id;
    private String location;
    private String amount;
    private String start;
    private String end;

    public WaterStat(String location, String amount, String start, String end) {
        this.location = location;
        this.amount = amount;
        this.start = start;
        this.end = end;
    }

    public WaterStat() {
    }

    public Long getId() {
        return Id;
    }

    public String getLocation() {
        return location;
    }

    public String getAmount() {
        return amount;
    }

    public String getStart() {
        return start;
    }

    public String getEnd() {
        return end;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public void setEnd(String end) {
        this.end = end;
    }
    
    

    

}
