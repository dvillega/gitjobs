/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.jobseeker;

/**
 *
 * @author christianlevi
 */
public class Person {
    
    //private instances
    private int id;
    private String name;
    private int address_id;
    private String zip_code;
    private String email;
    private char gender;
    
    public Person(){
    }
    
    public int getId(){
        return this.id;
    }
    
    public void setId(int newId){
        this.id = newId;
    }
    
    public String getName(){
        return this.name;
    }
    
    public void setName(String newName){
        this.name = newName;
    }
    
    public int getAddressId(){
        return this.address_id;
    }
    
    public void setAddressId(int newId){
        this.address_id = newId;
    }
    
    public String getZipCode(){
        return this.zip_code;
    }
    
    public void setZipCode(String newZip){
        this.zip_code = newZip;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public void setEmail(String newEmail){
        this.email = newEmail;
    }
    
    public char getGender(){
        return this.gender;
    }
    
    public void setGender(char newGender){
        this.gender = newGender;
    }
    
    @Override
    public String toString(){
        return getName() + " (" + getGender() + ")";
    }
    
}
