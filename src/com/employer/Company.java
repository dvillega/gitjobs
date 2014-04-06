package com.employer;
// Generated Apr 6, 2014 6:32:32 PM by Hibernate Tools 3.6.0



/**
 * Company generated by hbm2java
 */
public class Company  implements java.io.Serializable {


     private int id;
     private String name;
     private String email;
     private Integer addressId;

    public Company() {
    }

	
    public Company(int id, String name) {
        this.id = id;
        this.name = name;
    }
    public Company(int id, String name, String email, Integer addressId) {
       this.id = id;
       this.name = name;
       this.email = email;
       this.addressId = addressId;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Integer getAddressId() {
        return this.addressId;
    }
    
    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }




}


