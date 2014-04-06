/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.employer;

import com.jobseeker.HibernateUtil;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author dvillega
 */
public class PopulateCompany {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        CompanyMethods cm = new CompanyMethods();
        
        // Add companies
        cm.addCompany("FooBar Systems",1,"foo@bar.com");
        cm.addCompany("Too Industries", 2, "too@wtf.com");
        cm.addCompany("Testing123", 3, "test@ees.com");
        cm.addCompany("Yoyodyne Tech", 4, "yoyo@tech.com");
        
        // List companies
        cm.listCompanies();
        
        // Get the deets
        cm.getCompanyDetails("FooBar Systems");
        
        // Show a count
        cm.countCompanies();
        
        // Update the email
        cm.updateCompanyEmail("Too Industries", "too@legit.com");
        
        // List available companies
        cm.listCompanies();
        
        // Delete company
        cm.deleteCompany("Testing123");
        
        // List after delete
        cm.listCompanies();
    }
    
    
}

class CompanyMethods{
    //Using persistent objects to store data into the database.
    public void addCompany(String newName, int newId,  String newEmail){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Company c = new Company();
        c.setName(newName);
        c.setAddress_id(newId);
        c.setEmail(newEmail);
        session.save(c);
        session.getTransaction().commit();
    }
 
    //Using persistence object to delete a row from the database.
    public void deleteCompany(String name){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List list = session.createQuery("from Company where name='"+name+"'").list();
        Iterator itr = list.iterator();
        while(itr.hasNext()){
            Company c = (Company)itr.next();
            System.out.println("delete : "+c);
            session.delete(c);
        }
        session.getTransaction().commit();
    }
 
    //Using Criteria API to update the Person email
    public void updateCompanyEmail(String name, String email){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cri = session.createCriteria(Company.class);
        cri = cri.add(Restrictions.eq("name", name));
        List list = cri.list();
        Company c = (Company)list.iterator().next();
        c.setEmail(email);
        session.update(c);
        session.getTransaction().commit();
    }
 
    //Using HQL - Hibernate Query Language
    public void getCompanyDetails(String name){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query q = session.createQuery("from Company where name=:pn");
        q.setString("pn", name);
        List list = q.list();
        System.out.println("Getting Company Details using HQL. \n"+list);
        
        //The above query can also be achieved with Criteria & Restrictions API.
        Criteria cri = session.createCriteria(Company.class);
        cri = cri.add(Restrictions.eq("name", name));
        list = cri.list();
        System.out.println("Getting Company Details using Criteria API. \n"+list);
 
        session.getTransaction().commit();
    }
 
    //Aggregate function.
    public void countCompanies(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List list = session.createQuery("select count(*) from Company").list();
        System.out.println("Aggregate function count \n"+list);
        session.getTransaction().commit();
    }   

    //Native SQL Query
    public void listCompanies(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List list = session.createSQLQuery("select * from company").addEntity(Company.class).list();
        Iterator itr = list.iterator();
        while(itr.hasNext()){
            Company c = (Company)itr.next();
            System.out.println(c);
        }
        session.getTransaction().commit();

    }
 }