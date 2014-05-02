/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.translation;

import java.util.ArrayList;
import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.me.distSystem.HibernateUtil;
import org.me.lookups.MOS;
import org.me.lookups.MOS_CIV_LK;
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
    public List<KnowledgeSkill> getMilitarySkillCivilianTranslation(@WebParam(name = "user_mos") String user_mos) {
        Session s = null;
        Transaction tx = null;
        try {
            System.out.println("BEGIN");
            s = factory.getCurrentSession();
            tx = s.beginTransaction();
//            Query translate_mos = s.createQuery("select knowledge_skill "
//                    + "from mos_code join "
//                    + "mos_civ_lk with mos_code.mos = :mos_code "
//                    + "inner join knowledge_skill");
//            translate_mos.setParameter("mos_code", mos_code);
            Query get_mos_code = s.createQuery("from MOS where mos = :foo");
            get_mos_code.setParameter("foo", user_mos);
            List<MOS> result1 = (List<MOS>) get_mos_code.list();
            if (result1.isEmpty()) {
                return new ArrayList<KnowledgeSkill>();
            }
            Query get_civ_lookup = s.createQuery("from MOS_CIV_LK where mos_code = :result1");
            get_civ_lookup.setParameter("result1", result1.get(0).getId());
            List<MOS_CIV_LK> result2 = get_civ_lookup.list();
            List<Integer> ids = new ArrayList<Integer>();
            for(MOS_CIV_LK m : result2){
                ids.add(m.getciv_code());
            }
            System.out.println("GOT HERE 2 !!");
            if(ids.isEmpty()){
                System.out.println("WTF PART 2");
                return new ArrayList<KnowledgeSkill>();
            }
            Query getCivSkills = s.createQuery("from KnowledgeSkill where id in (:ids)");
            getCivSkills.setParameter("ids", ids.toArray());
            List<KnowledgeSkill> skills = getCivSkills.list();
            tx.commit();
            System.out.println("GOT HERE 3 !!");
            System.out.println("END");
            return skills;
            
//            List<KnowledgeSkill> list = translate_mos.list();
        } catch (Exception ex) {
            System.out.println("Error: " + ex.toString());
            System.out.println(ex.getStackTrace());
            
        } finally {
            
        }
        System.out.println("WTF DONE");
        return null;
    }
}
