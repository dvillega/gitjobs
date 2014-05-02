<%-- 
    Document   : getMissingSkillsForm
    Created on : May 2, 2014, 12:10:50 AM
    Author     : christianlevi
--%>

<%@page import="org.me.dao.JobDao"%>
<%@page import="org.me.employer.Job"%>
<%@page import="java.util.List"%>
<%@page import="org.me.distSystem.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Missing Skills</title>
    </head>
    <body>
        <h1>Find Missing Skills for VA and Job</h1>
        <%
            JobDao d = new JobDao();
            List<Job> jobs = d.getAllJobs();
            
            if(jobs == null || jobs.isEmpty()){
        %>
            <table>
                <tr><th>Company</th><th>Job Code</th><th>Pay</th><th>Type</th></tr>
                <tr><td colspan="4">No Jobs Found</td></tr>
            </table>
                <%
        }else{
                %>
            <table>
                <tr>
                    <th>Company</th><th>Job Code</th><th>Pay</th><th>Type</th>
                </tr>
                <% for (Job j : jobs) { %>
                <tr>
                    <td><%=j.getCompany().getName() %></td>
                    <td><%=j.getJobCode()%></td>
                    <td><%=j.getPayRate() + j.getPayType() %></td>
                    <td><%=j.getType() %></td>
                </tr>
                <% } %>
            </table>
        <% } %>
    </body>
</html>
