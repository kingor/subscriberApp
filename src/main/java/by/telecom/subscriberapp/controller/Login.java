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
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        
        int flag = 0;
        String ResultPage = "/login.jsp";
        List<User> listUser = null;
        listUser = DaoFactory.getUserDao().getByLogin(login);

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            user = new User();
        }
        user.setName("Аноним");
        user.setCategory(3);

        if (!listUser.equals(null)) {
            for (User user_each : listUser) {
                if (user_each.getPassword().equals(password)) {
                    user = user_each;
                    flag = 1;
                }
            }
        } else {
            ResultPage = "/login.jsp";
            user.SetError("Incorrect user name - " + login);
         //   session.setAttribute("user", user);
        }

        if (flag == 1) {
            user.Login(login);
            String remoteAddr = request.getRemoteAddr();
            Log log = new Log();
            log.login(user, remoteAddr);
            DaoFactory.getLogDao().create(log);
            
            session.setAttribute("user", user);
            ResultPage = "/index.jsp";
        } else {
            ResultPage = "/login.jsp";
            user.SetError("Incorrect user name - " + login);
            //session.setAttribute("user", user);
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
   /* try
    {
     /* String IsLogout = request.getParameter("logout");
      
      HttpSession session = request.getSession();
      
      String ResultPage;
      UserInfo User = (UserInfo) session.getAttribute("user");
      
      if (User == null)
        User = new UserInfo();
      
      if (IsLogout != null)
        if (IsLogout.equals("true"))
          User.Logout();
      
      ResultPage = "/login.jsp";
      
      session.setAttribute("user", User);
      
      ServletContext SC = getServletContext();
      RequestDispatcher Disp = SC.getRequestDispatcher(ResultPage);
      Disp.forward(request, response);
    }
    catch (Throwable theException)
    {
      theException.printStackTrace();
    }*/
  }

}
 