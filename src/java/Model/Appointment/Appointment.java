/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Appointment;

/**
 *
 * @author mitdo
 */
public class Appointment {

    private int idApp;
    private int idPatient;
    private String patient;
    private String dateMeet;
    private String timeMeet;
    private String reason;
    private String confirmed;

    public Appointment() {
    }

    public Appointment(int idApp, int idPatient, String patient, String dateMeet, String timeMeet, String reason, String confirmed) {
        this.idApp = idApp;
        this.idPatient = idPatient;
        this.patient = patient;
        this.dateMeet = dateMeet;
        this.timeMeet = timeMeet;
        this.reason = reason;
        this.confirmed = confirmed;
    }

    public int getIdApp() {
        return idApp;
    }

    public void setIdApp(int idApp) {
        this.idApp = idApp;
    }

    public int getIdPatient() {
        return idPatient;
    }

    public void setIdPatient(int idPatient) {
        this.idPatient = idPatient;
    }

    public String getPatient() {
        return patient;
    }

    public void setPatient(String patient) {
        this.patient = patient;
    }

    public String getDateMeet() {
        return dateMeet;
    }

    public void setDateMeet(String dateMeet) {
        this.dateMeet = dateMeet;
    }

    public String getTimeMeet() {
        return timeMeet;
    }

    public void setTimeMeet(String timeMeet) {
        this.timeMeet = timeMeet;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getConfirmed() {
        return confirmed;
    }

    public void setConfirmed(String confirmed) {
        this.confirmed = confirmed;
    }

    @Override
    public String toString() {
        return "Appointment{" + "idApp=" + idApp + ", idPatient=" + idPatient + ", patient=" + patient + ", dateMeet=" + dateMeet + ", timeMeet=" + timeMeet + ", reason=" + reason + ", confirmed=" + confirmed + '}';
    }

}
