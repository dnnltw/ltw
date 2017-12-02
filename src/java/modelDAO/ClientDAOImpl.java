/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import control.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
            pr.setString(2, client.getPassword());
            pr.setString(3, client.getName());
            pr.setString(4, client.getAddress());
            pr.setString(5, client.getMail());
            pr.setString(6, client.getPhone());
            pr.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
