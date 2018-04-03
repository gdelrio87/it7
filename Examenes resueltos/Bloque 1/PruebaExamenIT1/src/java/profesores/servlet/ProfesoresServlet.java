/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profesores.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import profesores.GestionProfesores;
import profesores.Profesor;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class ProfesoresServlet extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        HttpSession session = request.getSession(false);
        GestionProfesores gp = new GestionProfesores();
        if (session != null) {
            String url = "/index.jsp";
            String accion = "";
            if (request.getParameter("Accion") != null) {
                accion = request.getParameter("Accion");
            }

            if (accion.equals("listNuevos")) {
                request.setAttribute("listadoNovatos", gp.listadoNuevosProfesores());
            } else if (accion.equals("formAlta")) {
                url = "/add.jsp";
            } else if (accion.equals("altaProfesor")) {
                /*
                Recojo los datos, creo el objeto profesor, lo envio al modelo insertandolo en la BD, y llamo de nuevo a la pagina ppal para ver el nuevo profesor
                 */
                String dni = request.getParameter("dni");
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String dia = request.getParameter("diaAlta");
                String mes = request.getParameter("mesAlta");
                String year = request.getParameter("anioAlta");
                String depto = request.getParameter("departamento");

                SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-d");
                Date fechaAlta = formater.parse(year + "-" + mes + "-" + dia);

                Profesor p = new Profesor(dni, nombre, apellidos, fechaAlta, depto);
                gp.nuevoProfesor(p);

                request.setAttribute("listadoProfesores", gp.listadoProfesores());
            } else if (accion.equals("cancelarAlta")) {
                url = "/index.jsp";
            } else if (accion.equals("editar")) {
                url = "/add.jsp";
                String dni = request.getParameter("dniProfe");
                Profesor p = gp.obtenerProfesor(dni);
                
                request.setAttribute("profesor", p);
                request.setAttribute("accion", "editar");
            } else if(accion.equals("editarProfe")){
                url="/index.jsp";
                String dni = request.getParameter("dni");
                gp.update(dni, request.getParameter("nombre"), request.getParameter("apellidos"), request.getParameter("departamento"));
                request.setAttribute("listadoProfesores", gp.listadoProfesores());
            } else if(accion.equals("eliminar")){
                url = "/index.jsp";
                gp.delete(request.getParameter("dniProfe"));
                request.setAttribute("listadoProfesores", gp.listadoProfesores());
            }else {
                request.setAttribute("listadoProfesores", gp.listadoProfesores());
            }

            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);

        } else {
            String url = "/index.jsp";

            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            request.setAttribute("listadoProfesores", gp.listadoProfesores());
            rd.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ProfesoresServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ParseException ex) {
            Logger.getLogger(ProfesoresServlet.class.getName()).log(Level.SEVERE, null, ex);
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
