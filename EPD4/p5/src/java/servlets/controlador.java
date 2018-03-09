/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Modelo.Aparcamiento;
import Modelo.Coche;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
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
        response.setContentType("text/html;charset=UTF-8");
        String url = "";

        Aparcamiento aparcamiento = new Aparcamiento();

        List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();

        if (request.getParameter("CambiaCorrecto") != null) {

            List<Coche> listaCorrecto = new ArrayList<Coche>();
            for (int i = 0; i < listadoAparcamientos.size(); i++) {
                if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                    if (!listadoAparcamientos.get(i).esSuperado()) {
                        listaCorrecto.add(listadoAparcamientos.get(i));
                    }
                } else {
                    listaCorrecto.add(listadoAparcamientos.get(i));
                }
            }

            url = "/vistaAdd.jsp";
            request.setAttribute("listadoCochesCorrecto", listaCorrecto);
            request.setAttribute("CambiaCorrecto", request.getParameter("CambiaCorrecto"));
        } else if (request.getParameter("CambiaSuperado") != null) {

            List<Coche> listaSuperados = new ArrayList<Coche>();
            for (int i = 0; i < listadoAparcamientos.size(); i++) {
                if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                    if (listadoAparcamientos.get(i).esSuperado()) {
                        listaSuperados.add(listadoAparcamientos.get(i));
                    }
                }
            }

            url = "/vistaAdd.jsp";
            request.setAttribute("listadoCochesSuperado", listaSuperados);
            request.setAttribute("CambiaSuperado", request.getParameter("CambiaSuperado"));
        } else if (request.getParameter("enviar") != null) { //formulario para buscar matriculas
            url = "/index.jsp";

            String buscar = (String) request.getParameter("buscar");
            List<Coche> listaFiltrada = aparcamiento.listadoCocheMatricula(buscar);

            request.setAttribute("listadoCoches", listaFiltrada);
        } else if (request.getParameter("aparcados") != null) {
            url = "/index.jsp";
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
            List<Coche> listaAparcados = new ArrayList<Coche>();
            for (int i = 0; i < listadoAparcamientos.size(); i++) {
                if (sdf.format(listadoAparcamientos.get(i).getHoraSalida()).equals("00:00")) {
                    listaAparcados.add(listadoAparcamientos.get(i));
                }
            }

            request.setAttribute("listadoCoches", listaAparcados);

        } else {
            url = "/index.jsp";
            request.setAttribute("listadoCoches", listadoAparcamientos);
        }

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
