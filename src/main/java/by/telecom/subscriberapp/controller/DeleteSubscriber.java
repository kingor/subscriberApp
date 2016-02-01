/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package by.telecom.subscriberapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import by.telecom.subscriberapp.Subscriber;
import by.telecom.subscriberapp.DAO.DaoFactory;
import by.telecom.subscriberapp.Log;
import by.telecom.subscriberapp.Phone;
import by.telecom.subscriberapp.User;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
/**import by.telecom.subscriberapp.model.Phone;

/**
 *
 * @author ASUP8
 */
public class DeleteSubscriber extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();                         //Получение сессии
            User user = new User();
            user = (User)session.getAttribute("user");                          //Пользователь в сессии
            
            Long id = Long.parseLong(request.getParameter("subscriberSelect"));
            
            Subscriber subscriber = DaoFactory.getSubscriberDao().read(id);
            
            Log log = new Log();                                                //Создание лога
            log.deleteSubscriber(user, subscriber.getName(), 
                    subscriber.getAddress());
            DaoFactory.getLogDao().create(log);

            DaoFactory.getSubscriberDao().delete(subscriber);
            
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request, response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
