/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package panchkula;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Aarzoo
 */
public class myconnection {
    Connection db;
    public myconnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            db=DriverManager.getConnection("jdbc:mysql://localhost/dbpanchkula","root","");
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e.getMessage());
            
        }
        catch(SQLException e)
                {
                    System.out.println(e.getMessage());
                }
    }
    
}
