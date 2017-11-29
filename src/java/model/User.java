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
public class User {
    private int id;
    private String name;
    private String userName;
    private String password;
    private String position;

    public User() {
    }

    public User(int id) {
        this.id = id;
    }
    
    

    public User(int id, String name, String userName, String password, String position) {
        this.id = id;
        this.name = name;
        this.userName = userName;
        this.password = password;
        this.position = position;
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
    
}
