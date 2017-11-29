/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author NguyenNgoc
 */
public class Bill {
    private int id;
    private Date date;
    private User user;
    private Client client;
    private Ticket[] ticket;

    public Bill() {
    }

    
    public int getSizeTicket(){
        return this.ticket.length;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public  void setDate() {        
        date = new java.sql.Date(System.currentTimeMillis());
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    

    public Ticket[] getTicket() {
        return ticket;
    }

    public void setTicket(Ticket[] ticket) {
        this.ticket = ticket;
    }
    
}
