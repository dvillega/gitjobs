package org.me.employer;
// Generated May 1, 2014 1:30:59 AM by Hibernate Tools 3.6.0


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Position generated by hbm2java
 */
@Entity
@Table(name="position"
    ,schema="public"
)
public class Position  implements java.io.Serializable {


     private int id;
     private String posCode;
     private String title;
     private String description;
     private String basePayType;
     private BigDecimal basePay;
     private Set jobs = new HashSet(0);
     private Set knowledgeSkills = new HashSet(0);

    public Position() {
    }

	
    public Position(int id, String posCode, String title, String basePayType, BigDecimal basePay) {
        this.id = id;
        this.posCode = posCode;
        this.title = title;
        this.basePayType = basePayType;
        this.basePay = basePay;
    }
    public Position(int id, String posCode, String title, String description, String basePayType, BigDecimal basePay, Set jobs, Set knowledgeSkills) {
       this.id = id;
       this.posCode = posCode;
       this.title = title;
       this.description = description;
       this.basePayType = basePayType;
       this.basePay = basePay;
       this.jobs = jobs;
       this.knowledgeSkills = knowledgeSkills;
    }
   
     @Id 

    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    
    @Column(name="pos_code", nullable=false, length=32)
    public String getPosCode() {
        return this.posCode;
    }
    
    public void setPosCode(String posCode) {
        this.posCode = posCode;
    }

    
    @Column(name="title", nullable=false, length=64)
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    
    @Column(name="description")
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

    
    @Column(name="base_pay_type", nullable=false, length=12)
    public String getBasePayType() {
        return this.basePayType;
    }
    
    public void setBasePayType(String basePayType) {
        this.basePayType = basePayType;
    }

    
    @Column(name="base_pay", nullable=false, precision=12)
    public BigDecimal getBasePay() {
        return this.basePay;
    }
    
    public void setBasePay(BigDecimal basePay) {
        this.basePay = basePay;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="position")
    public Set getJobs() {
        return this.jobs;
    }
    
    public void setJobs(Set jobs) {
        this.jobs = jobs;
    }

@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="position_req_skills", schema="public", joinColumns = { 
        @JoinColumn(name="position_id", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="skill_id", nullable=false, updatable=false) })
    public Set getKnowledgeSkills() {
        return this.knowledgeSkills;
    }
    
    public void setKnowledgeSkills(Set knowledgeSkills) {
        this.knowledgeSkills = knowledgeSkills;
    }




}


