package com.employer;
// Generated Apr 6, 2014 6:32:32 PM by Hibernate Tools 3.6.0


import java.math.BigDecimal;

/**
 * Position generated by hbm2java
 */
public class Position  implements java.io.Serializable {


     private int id;
     private String posCode;
     private String title;
     private String description;
     private String basePayType;
     private BigDecimal basePay;

    public Position() {
    }

	
    public Position(int id, String posCode, String title, String basePayType, BigDecimal basePay) {
        this.id = id;
        this.posCode = posCode;
        this.title = title;
        this.basePayType = basePayType;
        this.basePay = basePay;
    }
    public Position(int id, String posCode, String title, String description, String basePayType, BigDecimal basePay) {
       this.id = id;
       this.posCode = posCode;
       this.title = title;
       this.description = description;
       this.basePayType = basePayType;
       this.basePay = basePay;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getPosCode() {
        return this.posCode;
    }
    
    public void setPosCode(String posCode) {
        this.posCode = posCode;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getBasePayType() {
        return this.basePayType;
    }
    
    public void setBasePayType(String basePayType) {
        this.basePayType = basePayType;
    }
    public BigDecimal getBasePay() {
        return this.basePay;
    }
    
    public void setBasePay(BigDecimal basePay) {
        this.basePay = basePay;
    }




}

