/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.employer;

import com.details.Address;
import java.util.Set;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author dvillega
 */
public class CompanyTest {
    
    public CompanyTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        CompanyMethods cm = new CompanyMethods();
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getId method, of class Company.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        Company instance = new Company();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
    }

    /**
     * Test of setId method, of class Company.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        Company instance = new Company();
        instance.setId(id);
    }

    /**
     * Test of getAddress method, of class Company.
     */
    @Test
    public void testGetAddress() {
        System.out.println("getAddress");
        Company instance = new Company();
        Address expResult = null;
        Address result = instance.getAddress();
        assertEquals(expResult, result);
    }

    /**
     * Test of setAddress method, of class Company.
     */
    @Test
    public void testSetAddress() {
        System.out.println("setAddress");
        Address address = null;
        Company instance = new Company();
        instance.setAddress(address);
    }

    /**
     * Test of getName method, of class Company.
     */
    @Test
    public void testGetName() {
        System.out.println("getName");
        Company instance = new Company();
        String expResult = "";
        String result = instance.getName();
        assertEquals(expResult, result);
     }

    /**
     * Test of setName method, of class Company.
     */
    @Test
    public void testSetName() {
        System.out.println("setName");
        String name = "";
        Company instance = new Company();
        instance.setName(name);
    }

    /**
     * Test of getEmail method, of class Company.
     */
    @Test
    public void testGetEmail() {
        System.out.println("getEmail");
        Company instance = new Company();
        String expResult = "";
        String result = instance.getEmail();
        assertEquals(expResult, result);
    }

    /**
     * Test of setEmail method, of class Company.
     */
    @Test
    public void testSetEmail() {
        System.out.println("setEmail");
        String email = "";
        Company instance = new Company();
        instance.setEmail(email);
    }

    /**
     * Test of getJobs method, of class Company.
     */
    @Test
    public void testGetJobs() {
        System.out.println("getJobs");
        Company instance = new Company();
        Set<Job> expResult = null;
        Set<Job> result = instance.getJobs();
        assertEquals(expResult, result);
    }

    /**
     * Test of setJobs method, of class Company.
     */
    @Test
    public void testSetJobs() {
        System.out.println("setJobs");
        Set<Job> jobs = null;
        Company instance = new Company();
        instance.setJobs(jobs);
        
    }
    
}
