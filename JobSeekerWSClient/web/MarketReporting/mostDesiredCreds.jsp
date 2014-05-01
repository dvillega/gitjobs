<%-- 
    Document   : mostDesiredCreds
    Created on : Apr 30, 2014, 9:29:39 PM
    Author     : christianlevi
--%>

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
	org.me.jobMarketReporting.JobMarketReporting_Service service = new org.me.jobMarketReporting.JobMarketReporting_Service();
	org.me.jobMarketReporting.JobMarketReporting port = service.getJobMarketReportingPort();
	 // TODO initialize WS operation arguments here
	java.lang.String occupation = "";
	// TODO process result here
	java.lang.String result = port.getMostDesiredCreds(occupation);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
