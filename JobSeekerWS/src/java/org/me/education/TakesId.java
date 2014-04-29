package org.me.education;
// Generated Apr 29, 2014 12:27:08 AM by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * TakesId generated by hbm2java
 */
@Embeddable
public class TakesId  implements java.io.Serializable {


     private int personId;
     private int courseId;
     private int sectionId;

    public TakesId() {
    }

    public TakesId(int personId, int courseId, int sectionId) {
       this.personId = personId;
       this.courseId = courseId;
       this.sectionId = sectionId;
    }
   


    @Column(name="person_id", nullable=false)
    public int getPersonId() {
        return this.personId;
    }
    
    public void setPersonId(int personId) {
        this.personId = personId;
    }


    @Column(name="course_id", nullable=false)
    public int getCourseId() {
        return this.courseId;
    }
    
    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }


    @Column(name="section_id", nullable=false)
    public int getSectionId() {
        return this.sectionId;
    }
    
    public void setSectionId(int sectionId) {
        this.sectionId = sectionId;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof TakesId) ) return false;
		 TakesId castOther = ( TakesId ) other; 
         
		 return (this.getPersonId()==castOther.getPersonId())
 && (this.getCourseId()==castOther.getCourseId())
 && (this.getSectionId()==castOther.getSectionId());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getPersonId();
         result = 37 * result + this.getCourseId();
         result = 37 * result + this.getSectionId();
         return result;
   }   


}


