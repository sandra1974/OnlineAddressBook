/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.model;

/**
 *
 * @author sandra
 */
public class Person {
    
    int id;
    String name, surname, address, phone, mobile, email, notes;
    
    
   
    
    public int getId(){
        return id;
        
    }
    
    public String getName(){
        return name;
    }
    
     public String getSurname(){
        return surname;
    }
    
    
    public String getAddress(){
        return address;
    }
    
    
    public String getPhone(){
        return phone;
    }
    
    
    public String getMobile(){
        return mobile;
    }
    
    public String getEmail(){
        return email;
    }
    public String getNotes(){
        return notes;
    }
    
    
    public void setId(int id){
        this.id=id;
    }
    
    
    public void setName(String name){
        this.name=name;
    }
    public void setSurname(String surname){
        this.surname=surname;
    }
    
    public void setAddress(String address){
        this.address=address;
    }
    
    public void setPhone(String phone){
        this.phone=phone;
    }
    public void setMobile(String mobile){
        this.mobile=mobile;
    }
    public void setEmail(String email){
        this.email=email;
    }
    public void setNotes(String notes){
        this.notes=notes;
    }
}
