/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package panchkula;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JButton;

/**
 *
 * @author Aarzoo
 */
public class secondframe extends javax.swing.JFrame {
int k;
String sr;
    /**
     * Creates new form secondframe
     */
    public secondframe(int id) {
        initComponents();
    k=id;
    
    getdata();
    }
void getdata()
{
     try
                             {
                                
                                String q="select * from tbcategory where pid=?";
                                myconnection obj=new myconnection();
                                PreparedStatement pst=obj.db.prepareStatement(q);
                                pst.setInt(1,k);
                                ResultSet rs;
                                rs=pst.executeQuery();
                                int ix=0,iy=0,iw=0,ih=0;
                                while(rs.next())
                                {
                                    final JButton bsub=new JButton(rs.getString("cname"));
                                    bsub.setBounds(ix+40,iy+40, iw+200, ih+40);
                                   bsub.setToolTipText(""+rs.getInt("id"));
                                    add(bsub);
                                    l2.add(bsub);
                                    iy=iy+40;
                                
                                 bsub.addActionListener(new ActionListener() {
             
                        @Override
                        public void actionPerformed(ActionEvent e) {
                           // System.out.println(b.getText()+" "+b.getToolTipText());
                           try
                           {myconnection obj1=new myconnection();
                            String y="select * from tbcategory where pid=?";
                            PreparedStatement post=obj1.db.prepareStatement(y);
                            post.setInt(1,Integer.parseInt(bsub.getToolTipText()));
        ResultSet res;
        res=post.executeQuery();
        if(res.next()==true)
                            {
                                    
                            frame3 obj=new frame3(Integer.parseInt(bsub.getToolTipText()));
                            obj.setVisible(true); 
                            
                            }
                           else
        {
            framelocation obj2=new framelocation(Integer.parseInt(bsub.getToolTipText()));
            obj2.setVisible(true);
            }
                                  }
                           catch(SQLException e1)
                           {
                               System.out.println(e1.getMessage());
                           }
                                   
                            
                        }
                    });
            
                                }
                            }
                            catch(SQLException e1)
                            {
                               System.out.println(e1.getMessage()); 
                            }
                            
}
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        l2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        l2.setIcon(new javax.swing.ImageIcon("C:\\Users\\Aarzoo\\Documents\\pklimages\\brainstorming_image.jpg")); // NOI18N
        getContentPane().add(l2);
        l2.setBounds(0, -320, 1110, 1870);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /*
         * Set the Nimbus look and feel
         */
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
            java.util.logging.Logger.getLogger(secondframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(secondframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(secondframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(secondframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                //new secondframe().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel l2;
    // End of variables declaration//GEN-END:variables
}
