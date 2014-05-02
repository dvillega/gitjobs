/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.vaAgencyManager;

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
public class VAAgencyManager {

    private static SessionFactory session = HibernateUtil.getSessionFactory();
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "findVACredAgencies")
    public String findVACredAgencies() {
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
    @WebMethod(operationName = "developCoursePlan")
    public String developCoursePlan(@WebParam(name = "jobID") String jobID, @WebParam(name = "vetSkillList") String vetSkillList) {
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