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
<jsp:useBean id="branch" class="String" scope="session" />
<jsp:useBean id="user_mos" class="String" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Translated Skills</title>
    </head>
    <body>
        <h1>Translated Skills</h1>
        <hr>
        
            <h3>Translated Skills found using</h3>
            Military Branch: ${branch}
            <br/>Code: ${user_mos}
        <br/><br/>
        <div id="skillList">
            <table>
                <tr>
                    <th>Name</th>
                </tr>
                <c:choose>
                    <c:when test="${skills.size() == 0}">
                        <tr>
                            <td colspan="1">No Skills Found</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${skills}" var="skill">
                            <tr><td>${skill.getTitle()}</td></tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </table>
        </div>
        <br/><br/>
        <a href="./skillTranslatorForm.jsp">Back to Translator Form</a><br/>
        <a href="./serviceList.jsp">Back to Translator Services</a><br/>
        <a href="../index.jsp">Home</a><br/>
    </body>
</html>
