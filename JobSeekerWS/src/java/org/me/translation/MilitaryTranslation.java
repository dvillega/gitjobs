/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.translation;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.me.distSystem.HibernateUtil;
import org.me.skill.KnowledgeSkill;

/**
 *
 * @author dvillega
 */
@WebService(serviceName = "MilitaryTranslation")
public class MilitaryTranslation {

    private static SessionFactory factory = HibernateUtil.getSessionFactory();
    
    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "getMilitarySkillCivilianTranslation")
    public List<KnowledgeSkill> hello(@WebParam(name = "mos_code") String mos_code) {
        Session s = null;
        Transaction tx = null;
        try {
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
            Query translate_mos = s.createQuery("select knowledge_skill"
                    + "from mos_code join "
                    + "mos_civ_lk with mos_code.mos = :mos_code "
                    + "inner join knowledge_skill");
            translate_mos.setParameter("mos_code", mos_code);
            List<KnowledgeSkill> list = translate_mos.list();
        } catch (Exception ex) {
            
        } finally {
            
        }
        return null;
    }
}
