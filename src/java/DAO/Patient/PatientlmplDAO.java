/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Patient;

import DAO.DAOFactory;
import Model.Patient.Patient;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mitdo
 */
public class PatientlmplDAO implements PatientDAO {

    private static List<Patient> Patients;
    private static Connection con;
    private static PreparedStatement ps;
    private static ResultSet rs;

    @Override
    public String insertPatient(Patient patient) {
        String ID_PATIENT = null;
        try {
            Class.forName(DAOFactory.DRIVER_NAME);
            con = DriverManager.getConnection(DAOFactory.URL, DAOFactory.USER_ID, DAOFactory.PASSWORD);
            String query = " INSERT INTO Patient(pname,gender,career,birthday,Tel,address,Email,pass)\n"
                    + "output inserted.pID\n"
                    + "values(?,?,?,?,?,?,?,?) ";
            ps = con.prepareStatement(query);
            ps.setString(1, patient.getpName());
            ps.setString(2, patient.getGender());
            ps.setString(3, patient.getCareer());
            ps.setDate(4, patient.getBirthday());

            ps.setString(5, patient.getTel());
            ps.setString(6, patient.getAddress());
            ps.setString(7, patient.getEmail());
            ps.setString(8, patient.getPass());
            rs = ps.executeQuery();
            if (rs.next()) {
                ID_PATIENT = rs.getString(1);
            }
            return ID_PATIENT;
        } catch (Exception e) {
            System.out.print(e);
        }
return null;
    }

    @Override
    public Patient getAccountPatientByID(String Id) {
        Patient p = null;
        try {
            Class.forName(DAOFactory.DRIVER_NAME);
            con = DriverManager.getConnection(DAOFactory.URL, DAOFactory.USER_ID, DAOFactory.PASSWORD);
            ps = con.prepareStatement("SELECT pName, pass FROM Patient where pID like ?");
            ps.setString(1, Id);
            rs = ps.executeQuery();
            while (rs.next()) {

                String name = rs.getString(1);
                String pass = rs.getString(2);
                p = new Patient(Id, name, pass);
            }
            con.close();
            return p;
        } catch (Exception ex) {
            Logger.getLogger(PatientlmplDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public static void main(String[] args) {
//        PatientlmplDAO patientlmplDAO = new PatientlmplDAO();
//        Patient p = new Patient();
//        p.setpName("Le Quang Nam");
//        p.setGender("Male");
//        p.setCareer("Developer");
//        p.setBirthday("11/20/1992");
//        p.setTel("0987 234234");
//        p.setAddress("Quang Binh");
//        p.setEmail("quangnam@gmai.com");
//        p.setPass("123");
//        String id = patientlmplDAO.insertPatient(p);
//        System.out.println("Your ID: " + id);

    }

}
