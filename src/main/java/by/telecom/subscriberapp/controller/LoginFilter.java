/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.controller;

import by.telecom.subscriberapp.*;
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUP8
 */
public class LoginFilter implements Filter{

    private String errorPage;

    public void destroy(){
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws ServletException, IOException{
        
        HttpServletRequest requestHttp = (HttpServletRequest) request;
        HttpServletResponse responseHttp = (HttpServletResponse) response;
        HttpSession session = requestHttp.getSession(false);
        User user = new User();
        if (session != null) {
            user = (User) session.getAttribute("user");
            if (user == null) {

                RequestDispatcher dispatcher = requestHttp.getRequestDispatcher("/login.jsp");
                dispatcher.forward(request, response);
                System.out.println("filter 111111111111111111111111111111");
                return;
            } else if (!user.IsLogin()) {
                RequestDispatcher dispatcher = requestHttp.getRequestDispatcher("/login.jsp");
                dispatcher.forward(request, response);
                System.out.println("filter 121212121212121212121212121212121");
                return;
            }
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
            System.out.println("filter 22222222222222222222222222222222");
            return;
        }
        System.out.println("filter 3333333333333333333333333333333333");    
        chain.doFilter(request, response);
    }
    

    public void init(FilterConfig config) throws ServletException{
        errorPage = config.getInitParameter("errorPage");
    }
}
