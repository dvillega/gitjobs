<%-- 
    Document   : translatedSkills
    Created on : May 2, 2014, 2:18:22 AM
    Author     : christianlevi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.me.skill.KnowledgeSkill"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="skills" type="ArrayList<KnowledgeSkill>" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Translated Skills</title>
    </head>
    <body>
        <h1>Translated Skills</h1>
        <hr>
        <div id="skillList">
            <c:choose>
                <c:when test="{skills == null}">
                    Hey!
                </c:when>
                <c:otherwise>
                    Ho!
                </c:otherwise>
            </c:choose>
        </div>
    </body>
</html>
