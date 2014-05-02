<%-- 
    Document   : newjsp
    Created on : May 2, 2014, 1:30:29 AM
    Author     : christianlevi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="org.me.skill.KnowledgeSkill"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Skill Translator Form</title>
    </head>
    <body>
        <h1>Skill Translator</h1>
        <form method="post" action="/Translator/translateSkills">
            <table>
                <tr>
                    <td>Military Branch</td>
                    <td><select name="militaryBranch">
                            <option>Air Force</option>
                            <option>Army</option>
                            <option>Marines</option>
                            <option>Navy</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Military Code</td>
                    <td><input type="text" name="militaryCode" value="" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Translate" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
