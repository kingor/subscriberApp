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
                                                    <h2>Параметры для абонента:</h2>
                                                    <table width="600">
                                                        <tr>
                                                            <td class="width25">ФИО абонента:
                                                                <input type="hidden" name="id" value="${subscriber.id}">
                                                            </td> 
                                                            <td class="textBold">${subscriber.name}</td>
                                                        
                                                        </tr>
                                                        <tr><td>Адрес абонента:</td> 
                                                            <td class="textBold">${subscriber.address}</td>
                                                        </tr>
                                                        <tr><td>Примечание:</td> 
                                                            <td class="textBold">${subscriber.comment}</td>
                                                        </tr>
                                                    </table>
                                                    <h2>Параметры:</h2>
                                                    <table width="600" >
                                                        <tr>
                                                            <td width="25%">Номер телефона:</td>
                                                            <td class="textBold">${phone.number}</td>
                                                        </tr>
                                                        <tr>
                                                            <td >Гром полоса:</td>
                                                            <td class="textBold">${phone.band}</td>
                                                        </tr>
                                                        <tr>
                                                            <td >Охрана:</td>
                                                            <td class="textBold">${phone.security}</td>
                                                        </tr>
                                                        <tr>
                                                            <td >СЦВ:</td>
                                                            <td class="textBold">${phone.scv}</td>
                                                        </tr>
                                                        <tr>
                                                            <td >ADSL:</td>
                                                            <td class="textBold">${phone.adsl}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            <form name="form7" method="post" action="addPhone.do">
                                                                <input type="hidden" name="id" value="${subscriber.id}">
                                                                <INPUT type="submit" name="submit" value="Новый тел." class="AllWidth">
                                                            </form>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </center>
                                            </td>
                                        </tr>

                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>
            <%@include file="include/Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>