package com.commplc.Variable;

import java.time.LocalDate;
import java.util.List;

import com.commplc.Entity.HistoryLine1Entity;
import com.commplc.Service.IHistoryLine1Service;
import com.commplc.Service.RealtimeDataPLC;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TimeVariable {

    @Autowired
    private IHistoryLine1Service historyLine1Service;

    private String[] markTime = {"", "", "", "", "", "", "", "", "", "", "", ""};

    private boolean[] markTimeCheckReset = {false, false, false, false, false, false, false, false, false, false, false, false};

    private Long[] usedTimeLine = {0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L};

    private Double[] runtimeMinuteLine =  {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

    public String getMarkTime(int line) {
        if (markTime[line - 1] == "" || markTimeCheckReset[line - 1] == true){
            List<HistoryLine1Entity> histories = historyLine1Service.findByDateAndShiftOrderByIdDesc(LocalDate.now().toString(), RealtimeDataPLC.shift);
            if (histories.size() != 0) {
                markTime[line - 1] = histories.get(0).getDate() + " " + histories.get(0).getTime();
                markTimeCheckReset[line - 1] = false;
            } else {
                switch(RealtimeDataPLC.shift) {
                    case "shift 1":
                        markTime[line - 1] = LocalDate.now().toString() + " " + "06:00:00.000";
                        break;
                    case "shift 2":
                        markTime[line - 1] = LocalDate.now().toString() + " " + "14:00:00.000";
                        break;
                    case "shift 3":
                        markTime[line - 1] = LocalDate.now().toString() + " " + "22:00:00.000";
                        break;
                }
            }
            return markTime[line - 1];
        } else {
            return markTime[line - 1];
        }
    }

    public void setMarkTime(int line, String value) {
        markTime[line - 1] = value;
    }

    public void setUsedTimeLine(int line, Long value) {
        usedTimeLine[line - 1] = value;
    }

    public Long getUsedTimeLine(int line) {
        return usedTimeLine[line - 1];
    }

    public void setMarkTimeCheckReset(int line, boolean value) {
        markTimeCheckReset[line - 1] = value;
    }

    public void setRuntimeMinuteLine(int line, Double value) {
        runtimeMinuteLine[line - 1] = value;
    }

    public Double getRuntimeMinuteLine(int line) {
        return runtimeMinuteLine[line - 1];
    }
    
}
