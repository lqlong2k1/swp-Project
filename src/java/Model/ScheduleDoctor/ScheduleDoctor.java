/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.ScheduleDoctor;

/**
 *
 * @author mitdo
 */
public class ScheduleDoctor {
    private int id;
    private int idTime;
    private int idDoctor;
    private String dateCheck;

    public ScheduleDoctor() {
    }

    public ScheduleDoctor(int id, int idTime, int idDoctor, String dateCheck) {
        this.id = id;
        this.idTime = idTime;
        this.idDoctor = idDoctor;
        this.dateCheck = dateCheck;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdTime() {
        return idTime;
    }

    public void setIdTime(int idTime) {
        this.idTime = idTime;
    }

    public int getIdDoctor() {
        return idDoctor;
    }

    public void setIdDoctor(int idDoctor) {
        this.idDoctor = idDoctor;
    }

    public String getDateCheck() {
        return dateCheck;
    }

    public void setDateCheck(String dateCheck) {
        this.dateCheck = dateCheck;
    }

    @Override
    public String toString() {
        return "ScheduleDoctor{" + "id=" + id + ", idTime=" + idTime + ", idDoctor=" + idDoctor + ", dateCheck=" + dateCheck + '}';
    }
    
}
