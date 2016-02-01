<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.Subscriber"%>
<%@page import="by.telecom.subscriberapp.Phone"%>
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
                                                    <h2>Технические параметры абонентов:</h2>
                                                    <table class="navi AllWidth" border="1">
                                                        <tr>
                                                            <th class="width10">
                                                                <a href="phones.do?sort=number&order=desc">↓</a>
                                                                Номер
                                                                <a href="phones.do?sort=number&order=asc">↑</a>
                                                            </th>
                                                            <th class="width15">
                                                                <a href="phones.do?sort=band&order=desc">↓</a>
                                                                Громпол.
                                                                <a href="phones.do?sort=band&order=asc">↑</a>
                                                            </th>
                                                            <th class="width10">
                                                                <a href="phones.do?sort=security&order=desc">↓</a>
                                                                Охрана
                                                                <a href="phones.do?sort=security&order=asc">↑</a>
                                                            </th>      
                                                            <th class="width10">
                                                                <a href="phones.do?sort=scv&order=desc">↓</a>
                                                                СЦВ
                                                                <a href="phones.do?sort=scv&order=asc">↑</a>
                                                            </th>
                                                            <th class="width10">
                                                                <a href="phones.do?sort=adsl&order=desc">↓</a>
                                                                Adsl
                                                                <a href="phones.do?sort=adsl&order=asc">↑</a>
                                                            </th>
                                                            <th class="width40">
                                                                <a href="phones.do?sort=name&order=desc">↓</a>
                                                                ФИО
                                                                <a href="phones.do?sort=name&order=asc">↑</a>
                                                            </th>
                                                        </tr>
                                                        <c:forEach var="phone" items="${phones}">
                                                            <tr>                                                               
                                                                <td>${phone.number}</td>
                                                                <td>${phone.band}</td>
                                                                <td>${phone.security}</td>
                                                                <td>${phone.scv}</td>
                                                                <td>${phone.adsl}</td>
                                                                <td>${phone.subscriber.name}</td>                       
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
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