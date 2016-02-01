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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                                <form name="form5" method="post" action="logSearch.do">
                                                    <center>
                                                        <h2>Просмотр журнала событий:</h2>
                                                    </center>
                                                    <table class="AllWidth">
                                                        <tr>
                                                            <th class="navu width15">
                                                                <a href="logSearch.do.do?sort=name&order=desc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↓</a>
                                                                Имя
                                                                <a href="logSearch.do?sort=name&order=asc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="navu width25">
                                                                <a href="logSearch.do?sort=date&order=desc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↓</a>
                                                                Дата
                                                                <a href="logSearch.do?sort=date&order=asc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="navu width10">
                                                                <a href="logSearch.do?sort=type&order=desc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↓</a>
                                                                Тип
                                                                <a href="logSearch.do?sort=type&order=asc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="navu width35">
                                                                <a href="logSearch.do?sort=comment&order=desc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↓</a>
                                                                Комментарий
                                                                <a href="logSearch.do?sort=comment&order=asc&name=${name}&dateStart=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />&dateEnd=<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />&type=${type}&comment=${comment}">↑</a>
                                                            </th>
                                                            <th class="navu width15"></th>
                                                        </tr>
                                                        <tr>        
                                                            <td rowspan="2" >
                                                                <INPUT type="text" name="name" value="${name}" class="AllHeight">
                                                            </td>
                                                            <td >
                                                                <INPUT type="date" name="dateStart" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />" class="AllWidth">
                                                            </td>
                                                            <td  rowspan="2">
                                                                <INPUT type="text" name="type" value="${type}" class="AllHeight">
                                                            </td>
                                                            <td  rowspan="2">
                                                                <INPUT type="text" name="comment" value="${comment}" class="AllHeight">
                                                            </td>
                                                            <td  rowspan="2">
                                                                <INPUT type="submit" name="submit" value="Поиск" class="AllHeight">
                                                            </td>
                                                        </tr>
                                                        <tr >
                                                            <td >
                                                                <INPUT type="date" name="dateEnd" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />" class="AllWidth" />
                                                            </td>
                                                        </tr>
                                                    </table>     
                                                </form>
                                                <center>
                                                    <c:if test="${!logSearch.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <c:forEach var="log" items="${logSearch}">
                                                                <tr>
                                                                    <td class="width15">${log.user.name}</td>
                                                                    <td class="width25">
                                                                        <fmt:formatDate pattern="dd.MM.yyyy --- hh:mm" value="${log.date}"/>
                                                                    </td>
                                                                    <td class="width10">${log.type}</td>
                                                                    <td class="width50">${log.comment}</td>
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