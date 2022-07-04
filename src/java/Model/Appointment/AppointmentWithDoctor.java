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
public class AppointmentWithDoctor extends Appointment implements Serializable{
    private int idDoctor;
    private String name;

    public AppointmentWithDoctor() {
    }

    public AppointmentWithDoctor(int idDoctor, String name) {
        this.idDoctor = idDoctor;
        this.name = name;
    }

    public AppointmentWithDoctor(int idDoctor, String name, int idApp, int idPatient, String patient, String dateMeet, String timeMeet, String reason, String confirmed) {
        super(idApp, idPatient, patient, dateMeet, timeMeet, reason, confirmed);
        this.idDoctor = idDoctor;
        this.name = name;
    }

    public int getIdDoctor() {
        return idDoctor;
    }

    public void setIdDoctor(int idDoctor) {
        this.idDoctor = idDoctor;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "AppointmentWithDoctor{" + "idDoctor=" + idDoctor + ", name=" + name + '}';
    }
    
    
}
