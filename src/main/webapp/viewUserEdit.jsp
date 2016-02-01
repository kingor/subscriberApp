<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.Subscriber"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title></title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <META content="text/html; charset=windows-1251" http-equiv=Content-Type>
        <LINK href="style/main3.css" type=text/css 
              rel=stylesheet>
    </head>
    <body bgcolor="#e4e8ea">
        <div align="center">
            <%@include file="include/Header.jspf" %>

            <table class="width960" cellspacing=0 cellpadding=0 border=0>
                <tr>
                    <%@include file="include/menu.jspf" %>

                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td class="width753"  align="center">
                        <table class="width753" cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table class="width753" cellspacing=0 cellpadding=20 border=0>
                                        <tr>
                                            <td class="content">
                                                <center>
                                                        <h2>Редактор пользователей:</h2>
                                                    </center>
                                                    <table class="AllWidth">
                                                        <tr>
                                                            <th class="navu width25">
                                                                <a href="userSearchEdit.do?sort=login&order=desc&login=${login}&name=${name}&category=${category}">↓</a>
                                                                Логин
                                                                <a href="userSearchEdit.do?sort=login&order=asc&login=${login}&name=${name}&category=${category}">↑</a>
                                                            </th> 
                                                            <th class="navu width25">
                                                                <a href="userSearchEdit.do?sort=name&order=desc&login=${login}&name=${name}&category=${category}">↓</a>
                                                                Имя
                                                                <a href="userSearchEdit.do?sort=name&order=asc&login=${login}&name=${name}&category=${category}">↑</a>
                                                            </th>
                                                            <th class="navu width25">
                                                                <a href="userSearchEdit.do?sort=category&order=desc&login=${login}&name=${name}&category=${category}">↓</a>
                                                                Категория
                                                                <a href="userSearchEdit.do?sort=category&order=asc&login=${login}&name=${name}&category=${category}">↑</a>
                                                            </th>
                                                            <th class="width25"></th>
                                                        </tr>
                                                        
                                                        <tr> 
                                                        <form name="form5" method="post" action="userSearchEdit.do">
                                                            <td><INPUT type="text" name="login" value="${login}" class="AllWidth"></td>
                                                            <td><INPUT type="text" name="name" value="${name}" class="AllWidth"></td>
                                                            <td><INPUT type="text" name="category" value="${category}" class="AllWidth"></td>
                                                            <td><INPUT type="submit" name="submit" value="Искать!" class="AllWidth"></td>
                                                        </form>
                                                        </tr>
                                                        
                                                    </table>     
                                                
                                                <center>
                                                    <c:if test="${!userSearchEdit.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <c:forEach var="userEdit" items="${userSearchEdit}">
                                                                <tr>
                                                                    <td class="width25">${userEdit.login}</td>
                                                                    <td class="width25">${userEdit.name}</td>
                                                                    <td class="width25">${userEdit.category}</td>
                                                                    <td >
                                                                        <form name="form5" method="post" action="editUserView.do">
                                                                            <input type="hidden" name="userSelect" value="${userEdit.id}"/>
                                                                            <INPUT type="submit" name="submit" value="Редактор" style="width:100%">
                                                                        </form>
                                                                    </td>
                                                                    <td>
                                                                        <form name="form7" method="post" action="deleteUser.do">
                                                                            <input type="hidden" name="userSelect" value="${userEdit.id}"/>
                                                                            <INPUT type="submit" name="submit" value="Удалить" style="width:100%">
                                                                        </form>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </c:if>
                                                </center>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <%@include file="include/Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>