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
import java.sql.SQLException;
import java.sql.Time;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class controladorAdmin extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        
        String url = "/vistaCRUD.jsp";
        Aparcamiento aparcamiento = new Aparcamiento();
        
        if(request.getParameter("insertar") != null){
        
            request.setAttribute("CRUD", "insertar");
            
            
        }else if(request.getParameter("editar") != null){
            
            request.setAttribute("CRUD", "editar");
            List<Coche> listadoAparcamientos = aparcamiento.listadoCocheMatricula(request.getParameter("editar"));
            request.setAttribute("coche", listadoAparcamientos.get(0));

        }else if(request.getParameter("eliminar") != null){
            
            String matricula = request.getParameter("eliminar");
            
            aparcamiento.delete(matricula);
            
            List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
            request.setAttribute("listadoCoches", listadoAparcamientos);
            
            url = "/administrador.jsp";
            
        }else if(request.getParameter("insertarJDBC") != null){
            
            
            String matricula = request.getParameter("matricula");
            String modelo = request.getParameter("modelo");
            Time horaEntrada = Time.valueOf(request.getParameter("horaEntrada"));
            Time horaSalida = Time.valueOf(request.getParameter("horaSalida"));
            int tiempoPermitido = Integer.parseInt(request.getParameter("tiempoPermitido"));
            
            aparcamiento.insert(matricula, modelo, horaEntrada, horaSalida, tiempoPermitido);
            
            List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
            request.setAttribute("listadoCoches", listadoAparcamientos);
            
            url = "/administrador.jsp";
            
            
        
        }else if(request.getParameter("editarJDBC") != null){
          
            
            String matricula = request.getParameter("matricula");
            String modelo = request.getParameter("modelo");
            Time horaEntrada = Time.valueOf(request.getParameter("horaEntrada"));
            Time horaSalida = Time.valueOf(request.getParameter("horaSalida"));
            int tiempoPermitido = Integer.parseInt(request.getParameter("tiempoPermitido"));
            
            String matriculaOriginal = (String)request.getParameter("matriculaOriginal");
            
            aparcamiento.update(matricula, modelo, horaEntrada, horaSalida, tiempoPermitido, matriculaOriginal);
            
            List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
            request.setAttribute("listadoCoches", listadoAparcamientos);
            
            url = "/administrador.jsp";
        
        }else if(request.getParameter("volver") != null){
            List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
            request.setAttribute("listadoCoches", listadoAparcamientos);
            
            url = "/index.jsp";
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(controladorAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(controladorAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
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
