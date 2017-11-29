/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author NguyenNgoc
 */
public class Room {
    private int id;
    private String name;
    private String type;
    private Seat[] seats;

    public Room() {
    }
    
    public void in(){
        System.out.println("ID " +id);
        System.out.println("name " + name);
        System.out.println("type  " + type);
        System.out.println("____________DANH SACH SEAT__________");
        for(int i=0 ; i<seats.length ; i++){
            System.out.println("SEAT: " +i);
            seats[i].in();
        }
    }

    public Room(int id, String name, String type, Seat[] seats) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.seats = seats;
    }
    
    public void setSizeSeats(int size){
        seats = new Seat[size];
    }
    
    public int getSizeSeat(){
        return seats.length;
    }

    public Seat[] getSeats() {
        return seats;
    }

    public void setSeats(Seat[] seats) {
        this.seats = seats;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}
