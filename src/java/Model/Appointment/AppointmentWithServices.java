/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Appointment;

import java.io.Serializable;

/**
 *
 * @author mitdo
 */
public class AppointmentWithServices extends Appointment implements Serializable{
    private int serID;
    private String serName;

    public AppointmentWithServices() {
    }

    public AppointmentWithServices(int serID, String serName) {
        this.serID = serID;
        this.serName = serName;
    }

    public AppointmentWithServices(int serID, String serName, int idApp, int idPatient, String patient, String dateMeet, String timeMeet, String reason, String confirmed) {
        super(idApp, idPatient, patient, dateMeet, timeMeet, reason, confirmed);
        this.serID = serID;
        this.serName = serName;
    }

    public int getSerID() {
        return serID;
    }

    public void setSerID(int serID) {
        this.serID = serID;
    }

    public String getSerName() {
        return serName;
    }

    public void setSerName(String serName) {
        this.serName = serName;
    }

    @Override
    public String toString() {
        return "AppointmentWithServices{" + "serID=" + serID + ", serName=" + serName + '}';
    }
    
}
