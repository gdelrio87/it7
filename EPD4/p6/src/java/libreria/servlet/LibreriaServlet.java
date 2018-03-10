/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libreria.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import libreria.Almacen;
import libreria.Libro;

/**
 *
 * @author Gonza
 */
public class LibreriaServlet extends HttpServlet {

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
        HttpSession session = request.getSession(false);
        if (session != null) {

            String accion = request.getParameter("Accion");

            if (accion.equals("agregar")) {

                List<String> listaIsbns = (List<String>) session.getAttribute("tienda.carro");
                String isbn = request.getParameter("seleccionLibros");
                Libro libro = null;
                try {
                    Almacen almacen = new Almacen();
                    libro = almacen.consultaLibro(Integer.parseInt(isbn));
                    if (libro != null) {
                        if (listaIsbns == null) {
                            listaIsbns = new ArrayList<String>(10);
                        }
                        listaIsbns.add(isbn);
                        session.setAttribute("tienda.carro", listaIsbns);
                    } else {
                        PrintWriter out = response.getWriter();
                        out.print("ERROR: Libro con ISBN " + isbn + " no estádisponible.");
                        out.close();
                    }
                } catch (Exception ex) {
                    PrintWriter out = response.getWriter();
                    out.print("ERROR: " + ex.getMessage());
                    out.close();
                }
                //OJO!! debe empezar con '/' para indicar que es relativo al contexto actual
                String url = "/Tienda.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (accion.equals("comprar")) {
                String url = "/Compra.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } else {

            String url = "/Tienda.jsp";
            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
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
