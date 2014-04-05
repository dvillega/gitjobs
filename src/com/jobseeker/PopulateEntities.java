/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.jobseeker;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author christianlevi
 */
public class PopulateEntities {
    
    public static void main(String args[]){
        PersonMethods pm = new PersonMethods();
 
        //Adding people
        pm.addPerson("Testing Guy1",1,"70001","tguy1@gmail.com",'m');
        pm.addPerson("Testing Guy2",7,"70003","tguy2@aol.com",'m');
        pm.addPerson("Testing Girl1",14,"70124","tgirl1@gmail.com",'f');
        pm.addPerson("Testing Girl2",21,"70123","tgirl2@hotmail.com",'f');
 
        //Listing added books
        pm.listPeople();
 
        //Getting Person details for a particular person.
        pm.getPersonDetails("Testing Guy2");
 
        //To see no. of People
        pm.countPerson();
 
        //Update particular book cost
        pm.updatePersonEmail("Testing Guy1","number1Stunta@gmail.com");
 
        //Listing available people
        pm.listPeople();
 
        //Deleting a Person
        pm.deletePerson("Testing Guy2");
 
        //Listing available People After executing delete
        pm.listPeople();
    }
 }
 
class PersonMethods{
    //Using persistent objects to store data into the database.
    public void addPerson(String newName, int newId, String newZip, String newEmail, char gender){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Person p = new Person();
        p.setName(newName);
        p.setAddress_id(newId);
        p.setZip_code(newZip);
        p.setEmail(newEmail);
        p.setGender(gender);
        session.save(p);
        session.getTransaction().commit();
    }
 
    //Using persistence object to delete a row from the database.
    public void deletePerson(String name){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List list = session.createQuery("from Person where name='"+name+"'").list();
        Iterator itr = list.iterator();
        while(itr.hasNext()){
            Person p = (Person)itr.next();
            System.out.println("delete : "+p);
            session.delete(p);
        }
        session.getTransaction().commit();
    }
 
    //Using Criteria API to update the Person email
    public void updatePersonEmail(String name, String email){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cri = session.createCriteria(Person.class);
        cri = cri.add(Restrictions.eq("name", name));
        List list = cri.list();
        Person p = (Person)list.iterator().next();
        p.setEmail(email);
        session.update(p);
        session.getTransaction().commit();
    }
 
    //Using HQL - Hibernate Query Language
    public void getPersonDetails(String name){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query q = session.createQuery("from Person where name=:pn");
        q.setString("pn", name);
        List list = q.list();
        System.out.println("Getting Person Details using HQL. \n"+list);
        
        //The above query can also be achieved with Criteria & Restrictions API.
        Criteria cri = session.createCriteria(Person.class);
        cri = cri.add(Restrictions.eq("bookName", name));
        list = cri.list();
        System.out.println("Getting Person Details using Criteria API. \n"+list);
 
        session.getTransaction().commit();
    }
 
    //Aggregate function.
    public void countPerson(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List list = session.createQuery("select count(*) from person").list();
        System.out.println("Aggregate function count \n"+list);
        session.getTransaction().commit();
    }   

    //Native SQL Query
    public void listPeople(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List list = session.createSQLQuery("select * from person").addEntity(Person.class).list();
        Iterator itr = list.iterator();
        while(itr.hasNext()){
            Person p = (Person)itr.next();
            System.out.println(p);
        }
        session.getTransaction().commit();

    }
 }