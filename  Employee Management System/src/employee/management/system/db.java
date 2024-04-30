/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package employee.management.system;

import java.sql.*;
import javax.swing.*;
import javax.swing.JOptionPane;
/**
 *
 * @author USER
 */
public class db {
    
    Connection conn = null;
    
    
    
    public static Connection java_db(){
        
        String url = "jdbc:mysql://localhost:3306/employee_database ";
        String user = "root";
        String password = "S_S_Dragon@721";
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,user,password);
            System.out.println(conn);
            return conn;
            
        }
        catch(Exception e){
            JOptionPane.showConfirmDialog(null, e);
            return null;
    }
    }
}
