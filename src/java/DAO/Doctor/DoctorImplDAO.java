/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Doctor;

import DAO.DAOFactory;
import Model.Doctor.Doctor;
import Model.Doctor.Doctor;
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
public class DoctorImplDAO implements DoctorDAO {

    private static List<Doctor> Doctors;
    private static Connection con;
    private static PreparedStatement ps;
    private static ResultSet rs;

    @Override
    public Doctor getAccountDoctorByID(String Id) {

        Doctor d = null;
        try {
            Class.forName(DAOFactory.DRIVER_NAME);
            con = DriverManager.getConnection(DAOFactory.URL, DAOFactory.USER_ID, DAOFactory.PASSWORD);
            ps = con.prepareStatement("SELECT dName, pass FROM Doctor where dID like ?");
            ps.setString(1, Id);
            rs = ps.executeQuery();
            while (rs.next()) {

                String name = rs.getString(1);
                String pass = rs.getString(2);
                d = new Doctor(Id, name, pass);
            }
            con.close();

        } catch (Exception ex) {
            Logger.getLogger(DoctorImplDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return d;

    }

    public static void main(String[] args) {
        Doctor d = new Doctor();
        DoctorImplDAO dAO = new DoctorImplDAO();
        d = dAO.getAccountDoctorByID("DT001");
        System.out.println("Doctor: " + d);
    }
}
