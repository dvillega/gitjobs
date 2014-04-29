/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.employerServices;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author christianlevi
 */
@WebService(serviceName = "JobMarketReporting")
public class JobMarketReporting {


    /**
     * Web service operation
     */
    @WebMethod(operationName = "getMostDesiredCreds")
    public String getMostDesiredCreds(@WebParam(name = "occupation") String occupation) {
        //TODO write your implementation code here:
        return null;
    }
}
