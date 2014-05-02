<%-- 
    Document   : mostDesiredCreds
    Created on : Apr 30, 2014, 9:29:39 PM
    Author     : christianlevi
--%>

<%@page import="org.me.distSystem.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="org.hibernate.criterion.Projections"%>
<%@page import="org.me.skill.KnowledgeSkill"%>
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
    Session s = null;
    Transaction tx = null;
    try {
        
        s = HibernateUtil.getSessionFactory().openSession();
        tx = s.beginTransaction();
        // get jobs
        List skills = s.createCriteria(KnowledgeSkill.class)
            .setProjection(Projections.projectionList()
            .add( Projections.rowCount(), "skillCount")
            .add( Projections.groupProperty("id"))
            ).addOrder(Order.desc("skillCount")).list();
        tx.commit();
        
//	org.me.jobMarketReporting.JobMarketReporting_Service service = new org.me.jobMarketReporting.JobMarketReporting_Service();
//	org.me.jobMarketReporting.JobMarketReporting port = service.getJobMarketReportingPort();
//	 // TODO initialize WS operation arguments here
//	java.lang.String occupation = "";
//	// TODO process result here
//	java.lang.String result = port.getMostDesiredCreds(occupation);
//	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
        out.println(ex.toString());
        ex.printStackTrace();
    }finally{
        if(s != null)
            s.close();
        
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
