/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author NguyenNgoc
 */
public class Schedule {
    private int id;
    private Time time;
    private Date date;
    private Room room;
    private Film film;
    private double price;
    
    public void in(){
        System.out.println("ID " + id);
        System.out.println("time " + time);
        System.out.println("date " +date);
        System.out.println("_____________danh sach room___________");
        
            room.in();
    }

    public Schedule() {
    }

    public Schedule(int id, Time time, Date date, Room room, Film film, double price) {
        this.id = id;
        this.time = time;
        this.date = date;
        this.room = room;
        this.film = film;
        this.price = price;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}
