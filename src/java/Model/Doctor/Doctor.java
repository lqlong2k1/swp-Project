/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Doctor;

/**
 *
 * @author mitdo
 */
public class Doctor {

    private String dID;
    private String dName;
    private String gender;
    private String birthday;
    private String photo;
    private String about;
    private String depID;
    private String hosID;
    private String tel;
    private String address;
    private String email;
    private double price;
    private String pass;

    public Doctor() {
    }

    public Doctor(String dID, String dName, String gender, String birthday, String photo, String about, String depID, String hosID, String tel, String address, String email, double price, String pass) {
        this.dID = dID;
        this.dName = dName;
        this.gender = gender;
        this.birthday = birthday;
        this.photo = photo;
        this.about = about;
        this.depID = depID;
        this.hosID = hosID;
        this.tel = tel;
        this.address = address;
        this.email = email;
        this.price = price;
        this.pass = pass;
    }

    public Doctor(String dID, String dName, String pass) {
        this.dID = dID;
        this.dName = dName;
        this.pass = pass;
    }

    public String getdID() {
        return dID;
    }

    public void setdID(String dID) {
        this.dID = dID;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getDepID() {
        return depID;
    }

    public void setDepID(String depID) {
        this.depID = depID;
    }

    public String getHosID() {
        return hosID;
    }

    public void setHosID(String hosID) {
        this.hosID = hosID;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "Doctor{" + "dID=" + dID + ", dName=" + dName + ", gender=" + gender + ", birthday=" + birthday + ", photo=" + photo + ", about=" + about + ", depID=" + depID + ", hosID=" + hosID + ", tel=" + tel + ", address=" + address + ", email=" + email + ", price=" + price + ", pass=" + pass + '}';
    }

}
