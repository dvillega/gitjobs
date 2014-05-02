/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.employerManager;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.me.distSystem.HibernateUtil;

/**
 *
 * @author dvillega
 */
@WebService(serviceName = "AgencyManager")
public class EmployerManager {

    private static SessionFactory session = HibernateUtil.getSessionFactory();
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "getEmployerSkillInterest")
    public String getEmployerSkillInterest(@WebParam(name = "agencyID") String agencyID) {
        Session s = null;
        Transaction tx = null;
        try {
            s = session.getCurrentSession();
            tx = s.beginTransaction();
            Query getSkillInterest = s.createQuery("");
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "postJob")
    public boolean postJob(@WebParam(name = "position") String position) {
         Session s = null;
        Transaction tx = null;
        try {
            s = session.getCurrentSession();
            tx = s.beginTransaction();
            Query getSkillInterest = s.createQuery("");
        } catch (Exception ex) {
            
        } finally {
            
        }
        return false;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "offerInternship")
    public String offerInternship(@WebParam(name = "universityID") String universityID, @WebParam(name = "jobID") String jobID) {
        Session s = null;
        Transaction tx = null;
        try {
            s = session.getCurrentSession();
            tx = s.beginTransaction();
            Query getSkillInterest = s.createQuery("");
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }
}
