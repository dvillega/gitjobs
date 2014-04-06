/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.employer;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author dvillega
*/
@Entity
@Table(name="company")
public class Company implements Serializable, Cloneable {

    private static final long serialVersionUID = 42L;
    
    //private instances
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String name;
    private int address_id;
    private String email;
    
    public Company(){
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

    public String getEmail(){
        return this.email;
    }
    
    public void setEmail(String newEmail){
        this.email = newEmail;
    }
    
    @Override
    public String toString(){
        return getName() + " (" + getEmail() + ")";
    }
    
}
