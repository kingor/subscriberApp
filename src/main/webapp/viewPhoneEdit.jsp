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
                                                <form name="form5" method="post" action="phoneSearchEdit.do">
                                                    <center>
                                                        <h2>Поиск по техническим параметрам:</h2>
                                                    </center>
                                                    <table class="navu AllWidth">
                                                        <tr>
                                                            <th class="width10">
                                                                <a href="phoneSearchEdit.do?sort=number&order=desc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↓</a>
                                                                Ном.
                                                                <a href="phoneSearchEdit.do?sort=number&order=asc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="width15">
                                                                <a href="phoneSearchEdit.do?sort=band&order=desc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↓</a>
                                                                Громпол.
                                                                <a href="phoneSearchEdit.do?sort=band&order=asc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="width10">
                                                                <a href="phoneSearchEdit.do?sort=security&order=desc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↓</a>
                                                                Охр.
                                                                <a href="phoneSearchEdit.do?sort=security&order=asc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="width10">
                                                                <a href="phoneSearchEdit.do?sort=scv&order=desc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↓</a>
                                                                СЦВ
                                                                <a href="phoneSearchEdit.do?sort=scv&order=asc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="width10">
                                                                <a href="phoneSearchEdit.do?sort=adsl&order=desc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↓</a>
                                                                Adsl
                                                                <a href="phoneSearchEdit.do?sort=adsl&order=asc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="width25">
                                                                <a href="phoneSearchEdit.do?sort=name&order=desc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↓</a>
                                                                ФИО
                                                                <a href="phoneSearchEdit.do?sort=name&order=asc&number=${number}&band=${band}&security=${security}&scv=${scv}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="width20"></th>
                                                        </tr>
                                                        <tr>
                                                            <td > <INPUT type="text" name="number" value="${number}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="band" value="${band}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="security" value="${security}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="scv" value="${scv}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="adsl" value="${adsl}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="name" value="${name}" class="AllWidth"></td>
                                                            <td > <INPUT type="submit" name="submit" value="Поиск" class="AllWidth"></td>
                                                        </tr>
                                                    </table> 
                                                </form>
                                                    <c:if test="${!phoneSearchEdit.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <c:forEach var="phone" items="${phoneSearchEdit}">
                                                                <tr>
                                                                    <td class="width10">${phone.number}</td>
                                                                    <td class="width15">${phone.band}</td>
                                                                    <td class="width10">${phone.security}</td>
                                                                    <td class="width10">${phone.scv}</td>
                                                                    <td class="width10">${phone.adsl}</td>
                                                                    <td class="width25">${phone.subscriber.name}</td>
                                                                    <td >
                                                                        <form name="form5" method="post" action="editPhoneView.do">
                                                                            <input type="hidden" name="phoneSelect" value="${phone.id}">               
                                                                            <INPUT type="submit" name="submit" value="Редактор" class="AllWidth">
                                                                        </form>
                                                                    </td>
                                                                    <td >
                                                                        <form name="form7" method="post" action="deletePhone.do">
                                                                            <input type="hidden" name="phoneSelect" value="${phone.id}">
                                                                            <INPUT type="submit" name="submit" value="Удалить" class="AllWidth">
                                                                        </form>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </c:if>
                                                
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