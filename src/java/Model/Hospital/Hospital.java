/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Hospital;

/**
 *
 * @author mitdo
 */
public class Hospital {
 
    private int HID;
    private String hName;
    private String descript;
    private String address;
    private String hotline;

    public Hospital() {
    }

    public Hospital(int HID, String hName, String descript, String address, String hotline) {
        this.HID = HID;
        this.hName = hName;
        this.descript = descript;
        this.address = address;
        this.hotline = hotline;
    }

    public int getHID() {
        return HID;
    }

    public void setHID(int HID) {
        this.HID = HID;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getHotline() {
        return hotline;
    }

    public void setHotline(String hotline) {
        this.hotline = hotline;
    }

    @Override
    public String toString() {
        return "Hospital{" + "HID=" + HID + ", hName=" + hName + ", descript=" + descript + ", address=" + address + ", hotline=" + hotline + '}';
    }
    
                
}
