/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author NguyenNgoc
 */
public class Film {
    private int id;
    private String name;
    private String cast;
    private String des;
    private String genre;
    private Date releaseDate;
    private Time runningTime;

    public String getCast() {
        return cast;
    }

    public void setCast(String cast) {
        this.cast = cast;
    }

    public Film(int id, String name, String cast, String des, String genre, Date releaseDate, Time runningTime) {
        this.id = id;
        this.name = name;
        this.cast = cast;
        this.des = des;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.runningTime = runningTime;
    }

    public Film() {
    }

    public Film(int id, String name, String des, String genre, Date releaseDate, Time runningTime) {
        this.id = id;
        this.name = name;
        this.des = des;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.runningTime = runningTime;
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

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Time getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(Time runningTime) {
        this.runningTime = runningTime;
    }
    
}
