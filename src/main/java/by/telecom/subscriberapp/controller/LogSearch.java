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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
/**import by.telecom.subscriberapp.model.Phone;

/**
 *
 * @author ASUP8
 */
public class LogSearch extends HttpServlet {

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
            String sort = "";
            String order = "";
            sort = request.getParameter("sort");
            order = request.getParameter("order");
            if( !"name".equals(sort) && !"date".equals(sort) 
                    && !"type".equals(sort) && !"comment".equals(sort))
                sort = "name";
            if(!"asc".equals(order) && !"desc".equals(order))
                order = "asc";
            String name = request.getParameter("name");
            String comment = request.getParameter("comment");
            String type = request.getParameter("type");
            Date dateStart = new Date();
            Date dateEnd = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            try {
                dateStart = formatter.parse(request.getParameter("dateStart"));
            } catch (Exception ex) {
                Logger.getLogger(LogSearch.class.getName()).log(Level.SEVERE, null, ex);
                dateStart = new Date();
            }

            try {
                dateEnd = formatter.parse(request.getParameter("dateEnd"));
            } catch (Exception ex) {
                Logger.getLogger(LogSearch.class.getName()).log(Level.SEVERE, null, ex);
                dateEnd = new Date();
            }

            Collection<Log> listLog = DaoFactory.getLogDao().getByParameter(name, dateStart, dateEnd,type, comment,sort, order);
            request.setAttribute("name", name);
            request.setAttribute("logSearch", listLog);
            request.setAttribute("dateStart", dateStart);
            request.setAttribute("dateEnd", dateEnd);
            request.setAttribute("type", type);
            request.setAttribute("comment", comment);
            RequestDispatcher view = request.getRequestDispatcher("viewLogSearch.jsp");
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
