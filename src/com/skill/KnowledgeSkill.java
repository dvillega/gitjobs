package com.skill;
// Generated Apr 6, 2014 6:09:43 PM by Hibernate Tools 3.6.0



/**
 * KnowledgeSkill generated by hbm2java
 */
public class KnowledgeSkill  implements java.io.Serializable {


     private int id;
     private String ksCode;
     private String title;
     private String description;
     private String level;

    public KnowledgeSkill() {
    }

    public KnowledgeSkill(int id, String ksCode, String title, String description, String level) {
       this.id = id;
       this.ksCode = ksCode;
       this.title = title;
       this.description = description;
       this.level = level;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getKsCode() {
        return this.ksCode;
    }
    
    public void setKsCode(String ksCode) {
        this.ksCode = ksCode;
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
    public String getLevel() {
        return this.level;
    }
    
    public void setLevel(String level) {
        this.level = level;
    }




}


