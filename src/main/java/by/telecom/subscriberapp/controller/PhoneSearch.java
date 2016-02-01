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
import by.telecom.subscriberapp.Phone;
import by.telecom.subscriberapp.DAO.DaoFactory;
import java.util.List;
/**import by.telecom.subscriberapp.model.Phone;

/**
 *
 * @author ASUP8
 */
public class PhoneSearch extends HttpServlet {

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
            if(!"number".equals(sort) && !"band".equals(sort) 
                    && !"security".equals(sort) && !"scv".equals(sort) 
                    && !"adsl".equals(sort) && !"name".equals(sort))
                sort = "number";
            if(!"asc".equals(order) && !"desc".equals(order))
                order = "asc";
           String number = request.getParameter("number");
           String band = request.getParameter("band");
           String security = request.getParameter("security");
           String scv = request.getParameter("scv");
           String adsl = request.getParameter("adsl");
           String name = request.getParameter("name");
            List<Phone> listPhone = DaoFactory.getPhoneDao()
                    .getByParameter(number, band, security, 
                            scv, adsl, name, sort, order);
            request.setAttribute("phoneSearch", listPhone);
            request.setAttribute("number", number);
            request.setAttribute("band", band);
            request.setAttribute("security", security);
            request.setAttribute("scv", scv);
            request.setAttribute("adsl", adsl);
            request.setAttribute("name", name);
            RequestDispatcher view = request.getRequestDispatcher("viewPhoneSearch.jsp");
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
