/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package panchkula;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Aarzoo
 */
public class blogchoice extends javax.swing.JFrame {
String l;
   int k; 
   int u;/**
     * Creates new form blogchoice
     */
    public blogchoice(int id,String m) {
        initComponents();
        k=id;
        l=m;
        System.out.println(""+l);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        b1 = new java.awt.Button();
        l1 = new java.awt.Label();
        b2 = new java.awt.Button();
        b3 = new java.awt.Button();
        ta = new java.awt.TextArea();
        jLabel1 = new javax.swing.JLabel();
        t1 = new java.awt.TextField();
        l2 = new java.awt.Label();
        c1 = new javax.swing.JComboBox();
        button1 = new java.awt.Button();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1000, 750));
        setResizable(false);
        getContentPane().setLayout(null);

        b1.setBackground(new java.awt.Color(51, 51, 51));
        b1.setFont(new java.awt.Font("Eras Medium ITC", 0, 14)); // NOI18N
        b1.setForeground(new java.awt.Color(255, 255, 255));
        b1.setLabel("NEW QUESTION");
        b1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                b1ActionPerformed(evt);
            }
        });
        getContentPane().add(b1);
        b1.setBounds(200, 76, 121, 50);
        getContentPane().add(l1);
        l1.setBounds(160, 380, 598, 20);

        b2.setFont(new java.awt.Font("Eras Medium ITC", 0, 14)); // NOI18N
        b2.setLabel("ADD ANSWER TO A QUESTION");
        b2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                b2ActionPerformed(evt);
            }
        });
        getContentPane().add(b2);
        b2.setBounds(530, 76, 216, 50);

        b3.setLabel("SUBMIT");
        b3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                b3ActionPerformed(evt);
            }
        });
        getContentPane().add(b3);
        b3.setBounds(430, 670, 60, 24);

        ta.setBackground(new java.awt.Color(255, 204, 204));
        ta.setForeground(new java.awt.Color(51, 51, 255));
        getContentPane().add(ta);
        ta.setBounds(150, 550, 598, 80);

        jLabel1.setFont(new java.awt.Font("Rage Italic", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 153, 153));
        jLabel1.setText("YOUR OPINION MATTERS TO US!");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(170, 10, 590, 54);
        getContentPane().add(t1);
        t1.setBounds(160, 440, 587, 20);
        getContentPane().add(l2);
        l2.setBounds(120, 490, 656, 28);

        c1.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                c1ItemStateChanged(evt);
            }
        });
        getContentPane().add(c1);
        c1.setBounds(240, 220, 412, 20);

        button1.setLabel("VIEW EXISTING QUESTIONS");
        button1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                button1ActionPerformed(evt);
            }
        });
        getContentPane().add(button1);
        button1.setBounds(350, 140, 175, 40);

        jLabel3.setIcon(new javax.swing.ImageIcon("C:\\Users\\Aarzoo\\Documents\\pklimages\\lets-write-something-writing.jpg")); // NOI18N
        jLabel3.setText(" ");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(-6, -6, 1000, 740);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void b2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_b2ActionPerformed
        try
    {
        c1.removeAllItems();
        u=0;
        myconnection obj=new myconnection();
        String q="select * from tbquestion where status=1 and blogid=?";
        PreparedStatement pst=obj.db.prepareStatement(q);
        pst.setInt(1,k);
        csquestion ca=null;
        ResultSet rs;
        
        rs=pst.executeQuery();
       
        while(rs.next())
        {
            
                 ca=new csquestion();
            ca.setQid(rs.getInt("id"));
            ca.setQname(rs.getString("qname"));//name(rs.getString("qname"));
            c1.addItem(ca);
        }
            
    }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }// TODO add your handling code here:
    }//GEN-LAST:event_b2ActionPerformed

    private void b1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_b1ActionPerformed
try
{
    c1.removeAllItems();
    u=4;
    l1.setText("Enter your question below");
    l2.setText("Enter answer(if any)");
}
catch(Exception e)
{
    System.out.println(e.getMessage());
} 
// TODO add your handling code here:
    }//GEN-LAST:event_b1ActionPerformed

    private void c1ItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_c1ItemStateChanged
// TODO add your handling code here:
        try
        {
           
            if(u==0)
            {u=1;
            
            l1.setText("");
            t1.setText(""+c1.getSelectedItem());
           l2.setText("ENTER YOUR ANSWER BELOW");}
               if(u==5)
   {
       myconnection obj=new myconnection();
       l1.setText("");
       t1.setText(c1.getSelectedItem().toString());
       l2.setText("EXISTING ANSWERS BELOW");
        csquestion obj3=(csquestion)c1.getSelectedItem();
            int id=obj3.getQid();
        
        String j="select * from tbanswers where qid=?";
        PreparedStatement pmst=obj.db.prepareStatement(j);
        pmst.setInt(1,id);
        
        ResultSet rse;
        
        rse=pmst.executeQuery();
       
        while(rse.next())
        {
            
                 ta.setText(rse.getString("answer")+"\n");
        } 
   } 
                
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }//GEN-LAST:event_c1ItemStateChanged

    private void b3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_b3ActionPerformed
try
{
    c1.removeAllItems();
   if(u==1)
   {
       csquestion obj3=(csquestion)c1.getSelectedItem();
            int id=obj3.getQid();
            myconnection obj=new myconnection();
        String q="insert into tbanswers(answer,qid,username,status)values(?,?,?,?)";
        PreparedStatement pst=obj.db.prepareStatement(q);
        pst.setString(1,ta.getText());
        
                pst.setInt(2,id);
                pst.setString(3,l);
                pst.setBoolean(4,true );
                pst.executeUpdate();
                JOptionPane.showMessageDialog(l1,"YOU HAVE SUBMITTED THE ANSWER SUCCESSFULLY!"," ",JOptionPane.INFORMATION_MESSAGE);
   }
   else if(u==4)
   {
    myconnection obj=new myconnection();
    String q="insert into tbquestion(qname,blogid,username,status)values(?,?,?,?)";
    PreparedStatement pst=obj.db.prepareStatement(q);
       pst.setString(1,t1.getText());
       pst.setInt(2,k);
       pst.setString(3,l);
       pst.setBoolean(4,true);
       pst.executeUpdate();
       String j="select * from tbquestion where qname=?";
        PreparedStatement pist=obj.db.prepareStatement(j);
       pist.setString(1, t1.getText());
        ResultSet rs;
        rs=pist.executeQuery();
        rs.next();
       String d="insert into tbanswers(answer,qid,username,status)values(?,?,?,?)";
    PreparedStatement post=obj.db.prepareStatement(d);
       post.setString(1,ta.getText());
       post.setInt(2,rs.getInt("id"));
       post.setString(3,l);
       post.setBoolean(4,true);
       
        
        post.executeUpdate();
        JOptionPane.showMessageDialog(l1,"YOU HAVE SUBMITTED THE QUESTION SUCCESSFULLY!"," ",JOptionPane.INFORMATION_MESSAGE);
   }
   
}
catch(Exception e)
{
    System.out.println(e.getMessage());
}// TODO add your handling code here:
    }//GEN-LAST:event_b3ActionPerformed

    private void button1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_button1ActionPerformed
try
    {
        c1.removeAllItems();
          u=5;
        l1.setText("");
        myconnection obj=new myconnection();
         String a="select * from tbquestion where status=1 and blogid=?";
        PreparedStatement post=obj.db.prepareStatement(a);
        post.setInt(1,k);
        csquestion ca=null;
        ResultSet ris;
        
        ris=post.executeQuery();
       
        while(ris.next())
        {
            
                 ca=new csquestion();
            ca.setQid(ris.getInt("id"));
            ca.setQname(ris.getString("qname"));//name(rs.getString("qname"));
            c1.addItem(ca);
        }
          
       
            
    }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }               // TODO add your handling code here:
    }//GEN-LAST:event_button1ActionPerformed

   
     
    public static void main(String args[]) {
        
         
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /*
         * If Nimbus (introduced in Java SE 6) is not available, stay with the
         * default look and feel. For details see
         * http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(blogchoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(blogchoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(blogchoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(blogchoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
       
        
    
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                //new blogchoice().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private java.awt.Button b1;
    private java.awt.Button b2;
    private java.awt.Button b3;
    private java.awt.Button button1;
    private javax.swing.JComboBox c1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private java.awt.Label l1;
    private java.awt.Label l2;
    private java.awt.TextField t1;
    private java.awt.TextArea ta;
    // End of variables declaration//GEN-END:variables
}