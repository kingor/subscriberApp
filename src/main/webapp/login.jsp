<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <td class="width960">
                        <table class="width960" cellspacing=1 cellpadding=0 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table class="width960" border=0 cellpadding=0>
                                        <TR>
                                            <TD class=nav >&nbsp;</TD>
                                        </TR>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table class="width960" border=0 cellpadding=0><tr><td bgcolor="#aaaaaa">
                                    <table class="width960" border=0 cellpadding=5>
                                        <tr>
                                            <td class="login">
                                                <center>
                                                <table>
                                                    <tr>
                                                        <td width="300">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="300" class="contentText1"><center>Введите логин и пароль:</center></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="300">
                                                            <form name="form5" method="post" action="LoginServlet">
                                                                
                                                                    <table width="300">
                                                                        <tr>
                                                                            <td>
                                                                                <p  >Логин:</p>
                                                                            </td>
                                                                            <td> <INPUT type="text" name="login" size="30">
                                                                            </td></tr>
                                                                        <tr>
                                                                            <td>
                                                                                <p >Пароль:</p>
                                                                            </td>
                                                                            <td> <INPUT type="password" name="password" size="30">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" >
                                                                               <center><INPUT type="submit" name="submit" value="Войти"></center>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                          
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </table>
                                                </center>
                                                <p>&nbsp;</p></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

            <table class="width960" cellspacing=1 cellpadding=0 border=0>
                <tr>
                    <td bgcolor="#aaaaaa">
                        <table class="width960" border=0 cellpadding=0>
                            <TR><TD class=nav >&nbsp;</TD>
                            </TR></table>
                    </td>
                </tr>
            </table>
            <%@include file="include/Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>