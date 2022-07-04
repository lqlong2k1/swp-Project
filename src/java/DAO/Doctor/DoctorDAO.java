/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Doctor;

import Model.Doctor.Doctor;

/**
 *
 * @author mitdo
 */
public interface DoctorDAO {
     public Doctor getAccountDoctorByID(String Id);
}
