/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Services;

/**
 *
 * @author mitdo
 */
public class Services {

    private int serID;
    private String serName;
    private String descript;
    private int hosID;
    private double price;

    public Services() {
    }

    public Services(int serID, String serName, String descript, int hosID, double price) {
        this.serID = serID;
        this.serName = serName;
        this.descript = descript;
        this.hosID = hosID;
        this.price = price;
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

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public int getHosID() {
        return hosID;
    }

    public void setHosID(int hosID) {
        this.hosID = hosID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Services{" + "serID=" + serID + ", serName=" + serName + ", descript=" + descript + ", hosID=" + hosID + ", price=" + price + '}';
    }
    

}
