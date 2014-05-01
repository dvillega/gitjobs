<%-- 
    Document   : getExpiredCredentials
    Created on : Apr 30, 2014, 9:59:11 PM
    Author     : christianlevi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expired Credentials</title>
    </head>
    <body>
        <h1>Get Expired Credentials</h1>
        <hr>
        <h3>FINISH THIS!!!</h3>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.jobSeekerManager.JobSeekerManager_Service service = new org.me.jobSeekerManager.JobSeekerManager_Service();
	org.me.jobSeekerManager.JobSeekerManager port = service.getJobSeekerManagerPort();
	 // TODO initialize WS operation arguments here
	java.lang.String jobSeekerID = "";
	// TODO process result here
	java.lang.String result = port.getExpiredCredentials(jobSeekerID);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
