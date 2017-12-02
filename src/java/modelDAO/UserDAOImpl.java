/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import control.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import static servlet.SigninServlet.encryption;

/**
 *
 * @author NguyenNgoc
 */
public class UserDAOImpl implements UserDAO {

    private Connection con = new DBConnection().getConnection();
    
    /**
     *
     * @param user
     * @return
     */
    @Override
    public boolean checkLoginAdmin(User user) {
        try {
            String sql = "SELECT * FROM users WHERE username = ? and password = ? ;";
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, user.getUsername());
            pre.setString(2, user.getPassword());
            ResultSet rs = pre.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            return false;
        }
    }

}
