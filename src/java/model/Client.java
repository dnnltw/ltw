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
public class Client {
    private int idCard;
    private int age;
    private String name;
    private String address;
    private String phoneNumber;

    public Client() {
    }

    public Client(int idCard, int age, String name, String address, String phoneNumber) {
        this.idCard = idCard;
        this.age = age;
        this.name = name;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public int getIdCard() {
        return idCard;
    }

    public void setIdCard(int idCard) {
        this.idCard = idCard;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    
}
