/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Film;
import model.Room;
import model.Sale;
import model.Schedule;

/**
 *
 * @author NguyenNgoc
 */
public class ScheduleDAOImpl implements ScheduleDAO {

    @Override
    public boolean addSchedule(Connection con, Schedule schedule) {
        try {
            String sql = "INSERT INTO schedule(time, date, price, sale_id, film_id, room_id) VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setTime(1, schedule.getTime());
            ps.setDate(2, (Date) schedule.getDate());
            ps.setDouble(3, schedule.getPrice());
            ps.setInt(4, schedule.getSale().getId());
            ps.setInt(5, schedule.getFilm().getId());
            ps.setInt(6, schedule.getRoom().getId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    @Override
    public ArrayList<Schedule> getListSchedule(Connection con) {
        ArrayList<Schedule> result = new ArrayList<Schedule>();
        try {
            String sql = "SELECT schedule.id, schedule.time as schedule_time, schedule.date as schedule_date,schedule.price as schedule_price, "
                    + "film.id as film_id, film.name as film_name, "
                    + "room.id as room_id, room.name as room_name, "
                    + "sale.id as sale_id, sale.name as sale_name "
                    + " FROM schedule "
                    + " INNER JOIN film ON schedule.film_id = film.id"
                    + " INNER JOIN room ON schedule.room_id = room.id"
                    + " INNER JOIN sale ON schedule.sale_id = sale.id"
                    + " ;";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Time time = rs.getTime(2);
                Date date = (Date) rs.getDate(3);
                Double price = rs.getDouble(4);
                Film film = new Film(rs.getInt("film_id"), rs.getString("film_name"));
                Room room = new Room(rs.getInt("room_id"), rs.getString("room_name"));
                Sale sale = new Sale(rs.getInt("sale_id"), rs.getString("sale_name"));
                Schedule schudule = new Schedule(rs.getInt(1), time, date, room, film, price, sale);
                result.add(schudule);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return result;
    }

    @Override
    public boolean editSchedule(Connection con, Schedule schedule) {
        try {
            String sql = "UPDATE schedule SET time=?, date=?, price=?, sale_id=?, film_id=?, room_id=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setTime(1, schedule.getTime());
            ps.setDate(2, (Date) schedule.getDate());
            ps.setDouble(3, schedule.getPrice());
            ps.setInt(4, schedule.getSale().getId());
            ps.setInt(5, schedule.getFilm().getId());
            ps.setInt(6, schedule.getRoom().getId());
            ps.setInt(7, schedule.getId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    @Override
    public boolean delelteSchedule(Connection con, Schedule sale) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
