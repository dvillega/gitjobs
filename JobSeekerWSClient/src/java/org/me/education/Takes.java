package org.me.education;
// Generated May 1, 2014 1:30:59 AM by Hibernate Tools 3.6.0


import java.math.BigDecimal;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.me.jobseeker.Person;

/**
 * Takes generated by hbm2java
 */
@Entity
@Table(name="takes"
    ,schema="public"
)
public class Takes  implements java.io.Serializable {


     private TakesId id;
     private Course course;
     private Section section;
     private Person person;
     private boolean paid;
     private BigDecimal grade;

    public Takes() {
    }

    public Takes(TakesId id, Course course, Section section, Person person, boolean paid, BigDecimal grade) {
       this.id = id;
       this.course = course;
       this.section = section;
       this.person = person;
       this.paid = paid;
       this.grade = grade;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="personId", column=@Column(name="person_id", nullable=false) ), 
        @AttributeOverride(name="courseId", column=@Column(name="course_id", nullable=false) ), 
        @AttributeOverride(name="sectionId", column=@Column(name="section_id", nullable=false) ) } )
    public TakesId getId() {
        return this.id;
    }
    
    public void setId(TakesId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="course_id", nullable=false, insertable=false, updatable=false)
    public Course getCourse() {
        return this.course;
    }
    
    public void setCourse(Course course) {
        this.course = course;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="section_id", nullable=false, insertable=false, updatable=false)
    public Section getSection() {
        return this.section;
    }
    
    public void setSection(Section section) {
        this.section = section;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="person_id", nullable=false, insertable=false, updatable=false)
    public Person getPerson() {
        return this.person;
    }
    
    public void setPerson(Person person) {
        this.person = person;
    }

    
    @Column(name="paid", nullable=false)
    public boolean isPaid() {
        return this.paid;
    }
    
    public void setPaid(boolean paid) {
        this.paid = paid;
    }

    
    @Column(name="grade", nullable=false, precision=3, scale=1)
    public BigDecimal getGrade() {
        return this.grade;
    }
    
    public void setGrade(BigDecimal grade) {
        this.grade = grade;
    }




}


