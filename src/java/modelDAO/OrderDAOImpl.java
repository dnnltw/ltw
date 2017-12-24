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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Client;
import model.Order;
import model.Room;
import model.Seat;
import model.Ticket;

/**
 *
 * @author Dell
 */
public class OrderDAOImpl implements OrderDAO {
    /**
     * get list order by client
     * @param con is a connection, get connection to database
     * @param client is a client must get list order
     * @param status is a status order such as: 1, 0
     * @return list order 
     */
    @Override
    public ArrayList<Order> getOrderSucess(Connection con, Client client, int status) {
        ArrayList<Order> result = new ArrayList<Order>();
        try {
            String sql = "SELECT * "
                    + "FROM ticket.order, ticket.ticket, ticket.seat, ticket.room, ticket.schedule, ticket.film "
                    + "WHERE ticket.order.client_id = 1 "
                    + "AND ticket.order.id = ticket.ticket.order_id "
                    + "AND ticket.ticket.seat_id = ticket.seat.id "
                    + "AND ticket.seat.room_id = ticket.room.id "
                    + "AND ticket.schedule.id = ticket.ticket.schedule_id "
                    + "AND ticket.schedule.film_id = ticket.film.id "
                    + "AND ticket.order.status = 1 "
                    + "order by ticket.order.id;";
            PreparedStatement pr = con.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                Order a = new Order();
                a.setId(rs.getInt("order.id"));
                a.setDate(rs.getDate("order.date"));
                a.setGrandtotal(rs.getFloat("order.grandtotal"));
                ArrayList<Ticket> listTK = new ArrayList<Ticket>();
                while(a.getId() == rs.getInt("order.id")){
                    
                    Ticket t = new Ticket();
                    Room r = new Room();
                    r.setName(rs.getString("room.name"));
                    Seat s = new Seat();
                    s.setCol(rs.getInt("seat.col"));
                    s.setRow(rs.getInt("seat.row"));
                    s.setRoom(r);
                    t.setSeat(s);
                    listTK.add(t);
                }
                a.setListTicket(listTK);
                result.add(a);
            }
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    @Override
    public boolean addOrder(Connection con, Order order) {
        try {
            String sql = "INSERT INTO `order`(date, status, discount, grandtotal, client_id) VALUES(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, (Date) order.getDate());
            ps.setInt(2, order.getStatus());
            ps.setFloat(3, order.getDiscount());
            ps.setFloat(4, order.getGrandtotal());
            ps.setInt(5, order.getClient().getId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    @Override
    public int getIdMax(Connection con) {
        int max = 0;
        String sql = "Select max(id) from `order`";
        try {
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery(sql);
            rs.beforeFirst();
            rs.next();
            max = rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return max;
    }

    @Override
    public Order getOrder(Connection con, int id) {
        Order result = null;
        try {
            String sql = "SELECT * FROM `order` WHERE id = ? ";
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setInt(1, id);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                Order a = new Order();
                a.setId(rs.getInt("id"));
                a.setDate(rs.getDate("date"));
                a.setGrandtotal(rs.getFloat("grandtotal"));
                a.setDiscount(rs.getFloat("discount"));
                ArrayList<Ticket> listTK = new ArrayList<Ticket>();
                a.setListTicket(listTK);
                result = (Order) a;
            }
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

}
