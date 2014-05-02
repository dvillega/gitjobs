<%-- 
    Document   : translatedSkills
    Created on : May 2, 2014, 2:18:22 AM
    Author     : christianlevi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.me.skill.KnowledgeSkill"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="skills" class="List<KnowledgeSkill>" scope="session" />
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
            <table>
                <tr>
                    <th>Name</th><th>Description</th><th>Level</th>
                </tr>
                <c:choose>
                    <c:when test="${skills.size() == 0}">
                        <tr>
                            <td colspan="3">No Skills Found</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${skills}" var="skill">
                            <td>${skill.getTitle()}</td>
                            <td>${skill.getDescription()}</td>
                            <td>${skill.getLevel()}</td>
                        </c:forEach>
                        <tr>
                            <td colspan="3">No Skills Found</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </table>
        </div>
    </body>
</html>
