/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.jobSeekerServices;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author christianlevi
 */
@WebService(serviceName = "JobSeekerManager")
public class JobSeekerManager {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getValidCredentials")
    public String getValidCredentials(@WebParam(name = "jobSeekerId") int jobSeekerId) {
        //TODO write your implementation code here:
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
