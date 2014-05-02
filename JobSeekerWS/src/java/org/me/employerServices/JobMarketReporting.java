/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.employerServices;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.me.distSystem.HibernateUtil;
import org.me.skill.KnowledgeSkill;

/**
 *
 * @author christianlevi
 */
@WebService(serviceName = "JobMarketReporting")
public class JobMarketReporting {
    
    private static SessionFactory factory = HibernateUtil.getSessionFactory();

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getMostDesiredCreds")
    public List<String> getMostDesiredCreds(@WebParam(name = "occupation") String occupation) {
        Session s = null;
        Transaction tx = null;
        try{
            s = factory.openSession();
            tx = s.beginTransaction();
            // get jobs
            List<KnowledgeSkill> skills = (List<KnowledgeSkill>) s.createCriteria(KnowledgeSkill.class)
                    .setProjection(Projections.projectionList()
                    .add( Projections.rowCount(), "skillCount")
                    .add( Projections.groupProperty("id"))
                    ).addOrder(Order.desc("skillCount"));
            // get count of skills from jobs
            // return top k skills
            //TODO write your implementation code here:
        }catch(Exception ex){
            
        }finally{
            
        }
        return null;
    }
}
