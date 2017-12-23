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
import model.Client;
import model.Order;

/**
 *
 * @author Dell
 */
public class OrderDAOImpl implements OrderDAO {

    @Override
    public ArrayList<Order> getOrderSucess(Connection con, Client client, int status) {
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
                System.out.println("Nhung");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
