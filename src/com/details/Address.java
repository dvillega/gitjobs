package com.details;
// Generated Apr 6, 2014 6:09:43 PM by Hibernate Tools 3.6.0



/**
 * Address generated by hbm2java
 */
public class Address  implements java.io.Serializable {


     private int id;
     private String address1;
     private String address2;
     private String city;
     private String zip;
     private String state;
     private String county;
     private String country;

    public Address() {
    }

	
    public Address(int id, String address1, String city, String zip, String state, String country) {
        this.id = id;
        this.address1 = address1;
        this.city = city;
        this.zip = zip;
        this.state = state;
        this.country = country;
    }
    public Address(int id, String address1, String address2, String city, String zip, String state, String county, String country) {
       this.id = id;
       this.address1 = address1;
       this.address2 = address2;
       this.city = city;
       this.zip = zip;
       this.state = state;
       this.county = county;
       this.country = country;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getAddress1() {
        return this.address1;
    }
    
    public void setAddress1(String address1) {
        this.address1 = address1;
    }
    public String getAddress2() {
        return this.address2;
    }
    
    public void setAddress2(String address2) {
        this.address2 = address2;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    public String getZip() {
        return this.zip;
    }
    
    public void setZip(String zip) {
        this.zip = zip;
    }
    public String getState() {
        return this.state;
    }
    
    public void setState(String state) {
        this.state = state;
    }
    public String getCounty() {
        return this.county;
    }
    
    public void setCounty(String county) {
        this.county = county;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }




}


