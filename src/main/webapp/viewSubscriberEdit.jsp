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
                                                <form name="form5" method="post" action="subscriberSearchEdit.do">
                                                    <center>
                                                        <h2>Поиск по фамилии:</h2>
                                                    </center>
                                                    <table class="navu AllWidth">
                                                        <tr>
                                                            <th class="width30">
                                                                <a href="subscriberSearchEdit.do?sort=name&order=desc&name=${name}&address=${address}&comment=${comment}">↓</a>
                                                                ФИО абонента
                                                                <a href="subscriberSearchEdit.do?sort=name&order=asc&name=${name}&address=${address}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="width30">
                                                                <a href="subscriberSearchEdit.do?sort=address&order=desc&name=${name}&address=${address}&comment=${comment}">↓</a>            
                                                                Адрес
                                                                <a href="subscriberSearchEdit.do?sort=address&order=asc&name=${name}&address=${address}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="width20">
                                                                <a href="subscriberSearchEdit.do?sort=comment&order=desc&name=${name}&address=${address}&comment=${comment}">↓</a>            
                                                                Примечание
                                                                <a href="subscriberSearchEdit.do?sort=comment&order=asc&name=${name}&address=${address}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="width20"></th>
                                                        </tr>
                                                        <tr>        
                                                            <td><INPUT type="text" name="name" value="${name}" class="AllWidth"></td>
                                                            <td><INPUT type="text" name="address" value="${address}" class="AllWidth"></td>
                                                            <td><INPUT type="text" name="comment" value="${comment}" class="AllWidth"></td>
                                                            <td class="width30"><INPUT type="submit" name="submit" value="Поиск" class="AllWidth"></td>
                                                        </tr>
                                                    </table>     
                                                </form>
                                                <center>
                                                    <c:if test="${!subscriberSearchEdit.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                        
                                                            <c:forEach var="subscriber" items="${subscriberSearchEdit}">
                                                                <tr>
                                                                    <td class="width30">${subscriber.name}</td>
                                                                    <td class="width30">${subscriber.address}</td>
                                                                    <td class="width20">${subscriber.comment}</td>
                                                                    <td>
                                                                        <form name="form5" method="post" action="editSubscriberView.do">
                                                                            <input type="hidden" name="subscriberSelect" value="${subscriber.id}"/>
                                                                            <INPUT type="submit" name="submit" value="Редактор" style="width:100%">
                                                                        </form>
                                                                    </td>
                                                                    <td>
                                                                        <form name="form7" method="post" action="deleteSubscriber.do">
                                                                            <input type="hidden" name="subscriberSelect" value="${subscriber.id}"/>
                                                                            <INPUT type="submit" name="submit" value="Удалить" onclick="return confirm('Вы уверены?') ? true : false;" style="width:100%">
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