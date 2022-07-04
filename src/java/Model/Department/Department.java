/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Department;

/**
 *
 * @author mitdo
 */
public class Department {
   
   private int depID;
   private String depname;

    public Department() {
    }

    public Department(int depID, String depname) {
        this.depID = depID;
        this.depname = depname;
    }

    public int getDepID() {
        return depID;
    }

    public void setDepID(int depID) {
        this.depID = depID;
    }

    public String getDepname() {
        return depname;
    }

    public void setDepname(String depname) {
        this.depname = depname;
    }

    @Override
    public String toString() {
        return "Department{" + "depID=" + depID + ", depname=" + depname + '}';
    }
   
}
