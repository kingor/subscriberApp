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
                                                    <h2>Новый абонент:</h2>

                                                    <table width="500" >
                                                        <form name="form5" method="post" action="createUser.do">
                                                            <tr>
                                                                <td width="25%">Логин:</td>
                                                                <td ><INPUT type="text" name="login" style="width:100%"></td>
                                                            </tr>
                                                            <tr>
                                                                <td >Пароль:</td>
                                                                <td><INPUT type="text" name="password" style="width:100%"></td>
                                                            </tr>
                                                            <tr>
                                                                <td >Имя:</td>
                                                                <td><INPUT type="text" name="name" style="width:100%"></td>
                                                            </tr>
                                                            <tr>
                                                                <td >Категория:</td>
                                                                <td>
                                                                    <select name="category" style="width:100%">                 
                                                                        <option value="2">Пользователь</option>
                                                                        <option value="1">Оператор</option>
                                                                        <option value="0">Администратор</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                    </table>
                                                    <br>
                                                    <table>
                                                        <tr>
                                                            <td width="50%">

                                                                <INPUT type="submit" name="submit" value="Сохранить" class="AllWidth">
                                                            </td>
                                                            </form>

                                                            <td width="50%">
                                                                <form name="form5" method="post" action="index.jsp">
                                                                    <INPUT type="submit" name="submit" value="Отмена" class="AllWidth">
                                                                </form>
                                                            </td>                                                          
                                                        </tr>                                                    
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