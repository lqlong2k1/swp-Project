/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Patient;

import java.sql.Date;

/**
 *
 * @author mitdo
 */
public class Patient {

    private String pID;
    private String pName;
    private String gender;
    private String career;
    private Date birthday;
    private String tel;
    private String address;
    private String email;
    private String pass;

    public Patient() {
    }

    public Patient(String pID, String pName, String gender, String career, Date birthday, String tel, String address, String email, String pass) {
        this.pID = pID;
        this.pName = pName;
        this.gender = gender;
        this.career = career;
        this.birthday = birthday;
        this.tel = tel;
        this.address = address;
        this.email = email;
        this.pass = pass;
    }

   
    public Patient(String pID, String pName, String pass) {
        this.pID = pID;
        this.pName = pName;
        this.pass = pass;
    }

    public String getpID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

 
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    @Override
    public String toString() {
        return "Patient{" + "pID=" + pID + ", pName=" + pName + ", gender=" + gender + ", career=" + career + ", birthday=" + birthday + ", tel=" + tel + ", address=" + address + ", email=" + email + ", pass=" + pass + '}';
    }

}
