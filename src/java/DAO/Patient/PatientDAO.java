/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Patient;

import Model.Patient.Patient;

/**
 *
 * @author mitdo
 */
public interface PatientDAO {
public String insertPatient(Patient patient);
 public Patient getAccountPatientByID(String Id);
}
