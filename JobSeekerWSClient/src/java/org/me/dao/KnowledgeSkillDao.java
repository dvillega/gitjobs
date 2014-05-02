/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.me.distSystem.HibernateUtil;
import org.me.skill.KnowledgeSkill;

/**
 *
 * @author christianlevi
 */
public class KnowledgeSkillDao {

    public void addKnowledgeSkill(KnowledgeSkill knowledgeSkill) {
        Transaction tx = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            tx = session.beginTransaction();
            session.save(knowledgeSkill);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

    public void deleteKnowledgeSkill(int knowledgeSkillid) {
        Transaction tx = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            tx = session.beginTransaction();
            KnowledgeSkill knowledgeSkill = (KnowledgeSkill) session.load(KnowledgeSkill.class, new Integer(knowledgeSkillid));
            session.delete(knowledgeSkill);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

    public void updateKnowledgeSkill(KnowledgeSkill knowledgeSkill) {
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            session.update(knowledgeSkill);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trns != null) {
                trns.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

    public List<KnowledgeSkill> getAllKnowledgeSkill() {
        List<KnowledgeSkill> knowledgeSkills = new ArrayList<KnowledgeSkill>();
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            knowledgeSkills = session.createQuery("from KnowledgeSkill").list();
        } catch (RuntimeException e) {
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return knowledgeSkills;
    }

    public KnowledgeSkill getKnowledgeSkillById(int knowledgeSkillid) {
        KnowledgeSkill knowledgeSkill = null;
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            String queryString = "from KnowledgeSkill where id = :id";
            Query query = session.createQuery(queryString);
            query.setInteger("id", knowledgeSkillid);
            knowledgeSkill = (KnowledgeSkill) query.uniqueResult();
        } catch (RuntimeException e) {
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return knowledgeSkill;
    }
    
}
