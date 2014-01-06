/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Expenes;
import entity.User;
import java.sql.*;
import java.util.Vector;

/**
 *
 * @author h10t93
 */
public class DataProcess {

    PreparedStatement ps;
    ResultSet rs;
    CallableStatement cs;
    DataConnection dc = new DataConnection();

    public boolean login(User user) {
      boolean result = false; 
        try {
            String sql="{call log(?,?)}";
            cs = dc.conn.prepareCall(sql);
           cs.setString(1, user.getUser());
           cs.setString(2, user.getPasss());
            rs=cs.executeQuery();
            if(rs.next()){
              result = true; 
              User u = new  User();
              u.setName(rs.getString("name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public Vector<Expenes> getData(){
    Vector<Expenes> list = new Vector<Expenes>();
        try {
            String sql="{call getData}";
            cs = dc.conn.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                Expenes e = new Expenes();
                e.setIdEx(rs.getInt(1));
                e.setIdUse(rs.getInt(2));
                e.setDate(rs.getString(3));
                e.setTotalAmount(rs.getFloat(4));
                list.add(e);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
