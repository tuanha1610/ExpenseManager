/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author h10t93
 */
public class DataConnection {
   Connection conn = null;
   public Connection getConnection(){
        try {
            String sql="jdbc:sqlserver://hoangtuan\\sql:1433;databaseName=dbExpense";
            String user="sa";
            String password="asdasd";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(sql, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(DataConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
       return conn;
   }
   public void disConn(){
   if(conn != null){
           try {
               conn.close();
           } catch (SQLException ex) {
               Logger.getLogger(DataConnection.class.getName()).log(Level.SEVERE, null, ex);
           }
   }
   }
}
