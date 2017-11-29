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
public class Seat {
    private int row;
    private int col;
    private String type;
    private int idSeat;
    
    public void in(){
        System.out.println("ID " + idSeat);
        System.out.println("Type " + type);
    }

    public Seat() {
    }

    public Seat(int col, int row, String type, int idSeat) {
        this.row = row;
        this.col = col;
        this.type = type;
        this.idSeat = idSeat;
    }

    public int getIdSeat() {
        return idSeat;
    }

    public void setIdSeat(int idSeat) {
        this.idSeat = idSeat;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
