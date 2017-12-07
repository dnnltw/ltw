/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Room;

/**
 *
 * @author NguyenNgoc
 */
public class RoomDAOImpl implements RoomDAO {

    @Override
    public boolean addRoom(Connection con, Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Room> getListRoom(Connection con) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editRoom(Connection con, Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Room> getListInforRoom(Connection con) {
        ArrayList<Room> result = new ArrayList<Room>();
        try {
            String sql = "SELECT * FROM room";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Room room = new Room(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("type"),
                        null);
                result.add(room);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return result;
    }

}
