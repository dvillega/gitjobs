package com.education;
// Generated Apr 6, 2014 6:32:32 PM by Hibernate Tools 3.6.0



/**
 * Course generated by hbm2java
 */
public class Course  implements java.io.Serializable {


     private int id;
     private String title;
     private String level;
     private String format;
     private String description;
     private char status;
     private String CCode;

    public Course() {
    }

    public Course(int id, String title, String level, String format, String description, char status, String CCode) {
       this.id = id;
       this.title = title;
       this.level = level;
       this.format = format;
       this.description = description;
       this.status = status;
       this.CCode = CCode;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getLevel() {
        return this.level;
    }
    
    public void setLevel(String level) {
        this.level = level;
    }
    public String getFormat() {
        return this.format;
    }
    
    public void setFormat(String format) {
        this.format = format;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public char getStatus() {
        return this.status;
    }
    
    public void setStatus(char status) {
        this.status = status;
    }
    public String getCCode() {
        return this.CCode;
    }
    
    public void setCCode(String CCode) {
        this.CCode = CCode;
    }




}

