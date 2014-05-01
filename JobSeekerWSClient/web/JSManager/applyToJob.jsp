<%-- 
    Document   : applyToJob
    Created on : Apr 30, 2014, 9:51:43 PM
    Author     : christianlevi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply to Job</title>
    </head>
    <body>
        <h1>Apply to Job</h1>
        <hr>
        <h3>FINISH THIS!!</h3>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.jobSeekerManager.JobSeekerManager_Service service = new org.me.jobSeekerManager.JobSeekerManager_Service();
	org.me.jobSeekerManager.JobSeekerManager port = service.getJobSeekerManagerPort();
	 // TODO initialize WS operation arguments here
	int jobSeekerID = 0;
	int jobID = 0;
	// TODO process result here
	java.lang.String result = port.applyToJob(jobSeekerID, jobID);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
