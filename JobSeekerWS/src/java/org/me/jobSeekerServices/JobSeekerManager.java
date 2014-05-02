/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.jobSeekerServices;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.me.distSystem.HibernateUtil;
import org.me.jobseeker.Person;

/**
 *
 * @author christianlevi
 */
@WebService(serviceName = "JobSeekerManager")
public class JobSeekerManager {

    private static SessionFactory factory = HibernateUtil.getSessionFactory();
    
    /**
     * Pull all creds that a given job seeker has that are valid
     */
    @WebMethod(operationName = "getValidCredentials")
    public String getValidCredentials(@WebParam(name = "person") String person) {
        Session s = null;
        Transaction tx = null;
        try {
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
            // Get list of credentials job seeker has
            Query get_job_seeker = s.createQuery("from person where name = :person");
            get_job_seeker.setParameter("person", person);
            List<Person> list = get_job_seeker.list();
            Query get_certs = s.createQuery("from certificates");
            // Prune the creds that have expired
            
            // Return valid creds
            
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "findVetWithSkills")
    public String findVetWithSkills(@WebParam(name = "skillList") String skillList) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "checkPositionApplicants")
    public String checkPositionApplicants(@WebParam(name = "jobID") int jobID) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "offerPosition")
    public String offerPosition(@WebParam(name = "applicantID") String applicantID, @WebParam(name = "jobID") String jobID) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "applyToJob")
    public String applyToJob(@WebParam(name = "jobSeekerID") int jobSeekerID, @WebParam(name = "jobID") int jobID) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getExpiredCredentials")
    public String getExpiredCredentials(@WebParam(name = "jobSeekerID") String jobSeekerID) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getMissingSkills")
    public String getMissingSkills(@WebParam(name = "jobID") String jobID, @WebParam(name = "vetSkillList") String vetSkillList) {
        //TODO write your implementation code here:
        return null;
    }
}
