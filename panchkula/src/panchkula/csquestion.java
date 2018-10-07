/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package panchkula;

/**
 *
 * @author Aarzoo
 */
public class csquestion {

    public csquestion() {
        
    }

    @Override
    public String toString() {
        return qname;
    }
    
    int qid;
    String qname;

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

   

    public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname;
    }
    
}
