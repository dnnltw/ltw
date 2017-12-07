/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import control.DBConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Client;

/**
 *
 * @author NguyenNgoc
 */
public class ClientDAOImpl implements ClientDAO{
    public Connection con = new DBConnection().getConnection();
    @Override
    public void signin(Client client) throws Exception {
    String sql = "INSERT INTO client(username, password, name, address, mail, phone) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, client.getUsername());
            pr.setString(2, encryption(client.getPassword()));
            pr.setString(3, client.getName());
            pr.setString(4, client.getAddress());
            pr.setString(5, client.getMail());
            pr.setString(6, client.getPhone());
            pr.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    public Client checkLoginClient(Client client){
        String sql = "SELECT * FROM client where username = ?";
        try {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, client.getUsername());
            ResultSet rs = pr.executeQuery();
            boolean kt = rs.next();
            System.out.println(kt);
            System.out.println(client.getUsername());
            Client x = new Client();
            if(kt){
                x.setUsername(rs.getString("username"));
                x.setPassword(rs.getString("password"));
                x.setName(rs.getString("name"));
                x.setAddress(rs.getString("address"));
                x.setMail(rs.getString("mail"));
                x.setPhone(rs.getString("phone"));
               
                if(rs.getString("password").equals(encryption(client.getPassword()))){
                    x.setPassword(client.getPassword());
                    return x;
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
        
        return null;
        
    }
    public static String encryption(String str) {
       byte[] defaultBytes = str.getBytes();
       try {
           MessageDigest algorithm = MessageDigest.getInstance("MD5");
           algorithm.reset();
           algorithm.update(defaultBytes);
           byte messageDigest[] = algorithm.digest();
           StringBuffer hexString = new StringBuffer();
           for (int i = 0; i < messageDigest.length; i++) {
              String hex = Integer.toHexString(0xFF & messageDigest[i]);
              if (hex.length() == 1) {
                  hexString.append('0');
              }
              hexString.append(hex);
          }
          str = hexString + "";
       } catch (NoSuchAlgorithmException e) {
          e.printStackTrace();
       }
       return str;
    }

    @Override
    public void changePassClient(Client client, String pass) throws Exception {
        String sql = "UPDATE client SET password = ? WHERE username = ?";
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, encryption(pass));
            pr.setString(2, client.getUsername());
            pr.executeUpdate();
    }
}
