/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Modelo.Aparcamiento;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gonza
 */
public class controlador extends HttpServlet {

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
        //HttpSession session = request.getSession(false);
        String url = "";

        if (request.getParameter("CambiaCorrecto") != null) {
            url = "/vistaAdd.jsp";
            request.setAttribute("CambiaCorrecto", request.getParameter("CambiaCorrecto"));
        } else if (request.getParameter("CambiaSuperado") != null) {
            url = "/vistaAdd.jsp";
            request.setAttribute("CambiaSuperado", request.getParameter("CambiaSuperado"));
        } else if(request.getParameter("enviar") != null){
            url = "/index.jsp";
            request.setAttribute("buscar", request.getParameter("buscar"));
            request.setAttribute("enviar", request.getParameter("enviar"));
        } else if(request.getParameter("aparcados") != null){
            url = "/index.jsp";
            request.setAttribute("aparcados", request.getParameter("aparcados"));
        } else {
            url = "/index.jsp";
        }

        request.setAttribute("listadoCoches", Aparcamiento.listadoCoches());

        ServletContext sc = getServletContext();
        RequestDispatcher rd = sc.getRequestDispatcher(url);
        rd.forward(request, response);
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