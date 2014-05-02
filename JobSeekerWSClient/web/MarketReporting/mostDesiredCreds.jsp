<%-- 
    Document   : mostDesiredCreds
    Created on : Apr 30, 2014, 9:29:39 PM
    Author     : christianlevi
--%>

<%@page import="org.me.jobMarketReporting.JobMarketReporting"%>
<%@page import="org.me.jobMarketReporting.JobMarketReporting_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Desired Skills</title>
    </head>
    <body>
        <h1>Most Desired Skills</h1>
        <hr>
        <h3>FINISH THIS!!!</h3>   
        <%-- start web service invocation --%><hr/>
    <%
    try {
        
	JobMarketReporting_Service service = new JobMarketReporting_Service();
	JobMarketReporting port = service.getJobMarketReportingPort();
	 // TODO initialize WS operation arguments here
	String occupation = "";
	// TODO process result here
	String result = port.getMostDesiredCreds(occupation);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
        out.println(ex.toString());
        ex.printStackTrace();
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
