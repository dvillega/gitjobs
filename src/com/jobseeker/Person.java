/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.jobseeker;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author christianlevi
 */
@Entity
@Table(name="person")
public class Person implements Serializable, Cloneable {

    private static final long serialVersionUID = -7049957706738879274L;
    
    //private instances
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
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

    public int getAddress_id(){
        return this.address_id;
    }

    public void setAddress_id(int newId){
        this.address_id = newId;
    }
    
    public int getAddressId(){
        return this.address_id;
    }
    
    public void setAddressId(int newId){
        this.address_id = newId;
    }

    public String getZip_code(){
        return this.zip_code;
    }

    public void setZip_code(String newZip){
        this.zip_code = newZip;
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
