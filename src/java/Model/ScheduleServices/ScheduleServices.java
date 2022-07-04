/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.ScheduleServices;

/**
 *
 * @author mitdo
 */
public class ScheduleServices {

    private int id;
    private int timeID;
    private int serID;
    private String dateCheck;

    public ScheduleServices() {
    }

    public ScheduleServices(int id, int timeID, int serID, String dateCheck) {
        this.id = id;
        this.timeID = timeID;
        this.serID = serID;
        this.dateCheck = dateCheck;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTimeID() {
        return timeID;
    }

    public void setTimeID(int timeID) {
        this.timeID = timeID;
    }

    public int getSerID() {
        return serID;
    }

    public void setSerID(int serID) {
        this.serID = serID;
    }

    public String getDateCheck() {
        return dateCheck;
    }

    public void setDateCheck(String dateCheck) {
        this.dateCheck = dateCheck;
    }

    @Override
    public String toString() {
        return "ScheduleServices{" + "id=" + id + ", timeID=" + timeID + ", serID=" + serID + ", dateCheck=" + dateCheck + '}';
    }

}
