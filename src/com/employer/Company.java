package com.employer;
// Generated Apr 8, 2014 12:02:02 AM by Hibernate Tools 3.6.0


import com.details.Address;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Company generated by hbm2java
 */
@Entity
@Table(name="company"
    ,schema="public"
)
public class Company  implements java.io.Serializable {


     private int id;
     private Address address;
     private String name;
     private String email;
     private Set<Job> jobs = new HashSet<Job>(0);

    public Company() {
    }

	
    public Company(int id, String name) {
        this.id = id;
        this.name = name;
    }
    public Company(int id, Address address, String name, String email, Set<Job> jobs) {
       this.id = id;
       this.address = address;
       this.name = name;
       this.email = email;
       this.jobs = jobs;
    }
   
     @Id 

    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="address_id")
    public Address getAddress() {
        return this.address;
    }
    
    public void setAddress(Address address) {
        this.address = address;
    }

    
    @Column(name="name", nullable=false)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="email", length=64)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="company")
    public Set<Job> getJobs() {
        return this.jobs;
    }
    
    public void setJobs(Set<Job> jobs) {
        this.jobs = jobs;
    }




}


