/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.educationServices;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.me.distSystem.HibernateUtil;
import org.me.education.Course;

@WebService(serviceName = "EducationManager")
public class EducationServices {

    private static SessionFactory factory = HibernateUtil.getSessionFactory();
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "getOpenCourses")
    public String getOpenCourses() {
        Session s = null;
        Transaction tx = null;
        try {
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
            Query get_courses = s.createQuery("from courses where courses.status = 'open'");
            List<Course> list = get_courses.list();
            
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "enroll")
    public String enroll(@WebParam(name = "courseID") String courseID, @WebParam(name = "studentID") String studentID) {
        Session s = null;
        Transaction tx = null;
        try {
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
            // Async?  enroll student in course
            Query enroll = s.createQuery("");
            
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "offerCourse")
    public String offerCourse(@WebParam(name = "courseID") String courseID, @WebParam(name = "sectionID") String sectionID) {
        Session s = null;
        Transaction tx = null;
        try {
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
            // HQL insert course in 
            Query offer_course = s.createQuery("");
            
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "grantCredential")
    public String grantCredential(@WebParam(name = "jsID") String jsID, @WebParam(name = "credential") String credential) {
        Session s = null;
        Transaction tx = null;
        try {
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
            // HQL INSERT CRED 
            Query grant_cred = s.createQuery("");
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }
}
