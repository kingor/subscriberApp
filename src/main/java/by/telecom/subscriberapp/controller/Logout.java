package by.telecom.subscriberapp.controller;

import by.telecom.subscriberapp.DAO.DaoFactory;
import by.telecom.subscriberapp.Log;
import by.telecom.subscriberapp.User;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class Logout extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ResultPage;
        int flag = 0;
        ResultPage = "/login.jsp";

        HttpSession session = request.getSession();

        if (session != null) {
            User user = (User) session.getAttribute("user");

            if (user != null) {              
                String remoteAddr = request.getRemoteAddr();
                Log log = new Log();               
                log.logout(user, remoteAddr);
                DaoFactory.getLogDao().create(log);
                user.Logout();
                session.setAttribute("user", user);
            } else {
                ResultPage = "/login.jsp";
                
            }
        }

        ServletContext SC = getServletContext();
        RequestDispatcher Disp = SC.getRequestDispatcher(ResultPage);
        Disp.forward(request, response);
    }
  
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
    try
    {
    //  String IsLogout = request.getParameter("logout");
      
    //  HttpSession session = request.getSession();
      
     // String ResultPage;
     // UserInfo User = (UserInfo) session.getAttribute("user");
      
     // if (User == null)
    //    User = new UserInfo();
      
    //  if (IsLogout != null)
   //     if (IsLogout.equals("true"))
   //       User.Logout();
      
   //   ResultPage = "/login.jsp";
      
   //   session.setAttribute("user", User);
      
  //    ServletContext SC = getServletContext();
   //   RequestDispatcher Disp = SC.getRequestDispatcher(ResultPage);
   //   Disp.forward(request, response);
    }
    catch (Throwable theException)
    {
      theException.printStackTrace();
    }
  }

}
 