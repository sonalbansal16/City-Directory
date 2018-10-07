/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package panchkula;

/**
 *
 * @author Aarzoo
 */
public class csCategory {
    int id,pid;
    String cname;

    @Override
    public String toString() {
        return cname;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public boolean isFurther() {
        return further;
    }

    public void setFurther(boolean further) {
        this.further = further;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
    boolean further;
}
