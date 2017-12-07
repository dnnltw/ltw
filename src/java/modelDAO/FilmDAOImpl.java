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
import model.Film;

/**
 *
 * @author NguyenNgoc
 */
public class FilmDAOImpl implements FilmDAO{

    @Override
    public boolean addFilm(Connection con, Film film) {
        try {
            String sql = "INSERT INTO film(name, productCountry, releaseDate, runningtime, vote, des, trailer, poster) VALUES(?, ?, ?, ?, ?, ?, ?,  ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, film.getName());
            ps.setString(2, film.getProductCountry());
            ps.setDate(3, film.getRealeaseDate());
            ps.setInt(4, film.getRunningTime());
            ps.setFloat(5, film.getVote());
            ps.setString(6, film.getDes());
            ps.setString(7, film.getTrailer());
            ps.setString(8, film.getPoster());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Film> getListFilm(Connection con) {
        ArrayList<Film> result = new ArrayList<Film>();
        try {
            String sql = "SELECT * FROM film";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Film a = new Film(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getDate(4), 
                        rs.getInt(5), 
                        rs.getFloat(6), 
                        rs.getString(7), 
                        rs.getString(8), 
                        rs.getString(9));
                result.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    @Override
    public boolean updateFilm(Connection con, Film film) {
        try {
            String sql = "UPDATE film SET name=?, productCountry=?, releaseDate=?, runningtime=?, vote=?, des=?, trailer=?, poster=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, film.getName()); ps.setString(2, film.getProductCountry());
            ps.setDate(3, film.getRealeaseDate()); ps.setInt(4, film.getRunningTime());
            ps.setFloat(5, film.getVote()); ps.setString(6, film.getDes());
            ps.setString(7, film.getTrailer());
            ps.setString(8, film.getPoster());
            ps.setInt(9, film.getId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
