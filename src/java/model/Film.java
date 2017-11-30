/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;

/**
 *
 * @author NguyenNgoc
 */
public class Film implements Serializable {

    private int id;
    private String name, productCountry;
    private Date realeaseDate;
    private int runningTime;
    private float vote;
    private String des, trailer;

    public Film(int id, String name, String productCountry, Date realeaseDate, int runningTime, float vote, String des, String trailer) {
        this.id = id;
        this.name = name;
        this.productCountry = productCountry;
        this.realeaseDate = realeaseDate;
        this.runningTime = runningTime;
        this.vote = vote;
        this.des = des;
        this.trailer = trailer;
    }

    public Film() {
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

    public String getProductCountry() {
        return productCountry;
    }

    public void setProductCountry(String productCountry) {
        this.productCountry = productCountry;
    }

    public Date getRealeaseDate() {
        return realeaseDate;
    }

    public void setRealeaseDate(Date realeaseDate) {
        this.realeaseDate = realeaseDate;
    }

    public int getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(int runningTime) {
        this.runningTime = runningTime;
    }

    public float getVote() {
        return vote;
    }

    public void setVote(float vote) {
        this.vote = vote;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

}