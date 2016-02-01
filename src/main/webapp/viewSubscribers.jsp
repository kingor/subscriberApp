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
                        <table class="width753" cellspacing=0 cellpadding=1>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table class="width753" cellspacing=0 cellpadding=20>
                                        <tr>
                                            <td class="content">                                               
                                                <h2>Все абоненты в базе данных:</h2>
                                                <table class="navi AllWidth" border="1">
                                                    <tr>
                                                        <th class="width40">
                                                            <a href="subscribers.do?sort=name&order=desc">↓</a>
                                                            ФИО абонента
                                                            <a href="subscribers.do?sort=name&order=asc">↑</a>
                                                        </th>
                                                        <th class="width35">
                                                            <a href="subscribers.do?sort=address&order=desc">↓</a>
                                                            Адрес абонента
                                                            <a href="subscribers.do?sort=address&order=asc">↑</a>
                                                        </th>
                                                        <th class="width15">
                                                            <a href="subscribers.do?sort=comment&order=desc">↓</a>
                                                            Примечание
                                                            <a href="subscribers.do?sort=comment&order=asc">↑</a>
                                                        </th>
                                                        <th class="width10">Подробнее</th>
                                                    </tr>
                                                    <c:forEach var="subscriber" items="${subscribers}">
                                                        <tr>
                                                            <td>${subscriber.name}</td>
                                                            <td>${subscriber.address}</td>
                                                            <td>${subscriber.comment}</td>
                                                            <td>
                                                                <form name="form5" method="post" action="subscriberFull.do">
                                                                    <input type="hidden" name="subscriberSelect" value="${subscriber.id}">
                                                                    <INPUT type="submit" name="submit" value="Подробнее" class=" AllWidth">
                                                                </form>
                                                            </td>
                                                        </tr>    
                                                    </c:forEach>
                                                </table>    
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