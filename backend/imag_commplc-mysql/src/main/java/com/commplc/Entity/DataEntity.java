package com.commplc.Entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "data")
public class DataEntity extends BaseEntity { 

    public DataEntity(String line, String status, String speed, String counterOut, String runtime, String time, 
                      String date, String shift, String target) {
        this.setLine(line);
        this.setStatus(status);
        this.setSpeed(speed);
        this.setCounterOut(counterOut);
        this.setRuntime(runtime);
        this.setTime(time);
        this.setDate(date);
        this.setShift(shift);
        this.setTarget(target);
    }

    public DataEntity() {

    }
}
