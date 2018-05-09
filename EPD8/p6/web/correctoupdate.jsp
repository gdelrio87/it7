<%-- 
    Document   : correctoupdate
    Created on : 24-may-2016, 19:44:53
    Author     : saras
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="javax.ejb.Local"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="entidades.Libro"%>
<%@page import="entidades.Editorial"%>
<%@page import="clienteREST.JerseyClientLibros"%>
<%@page import="clienteREST.JerseyClientEditorial"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Profesor</title>
    </head>
    <body>
        <h1>Editar Profesor</h1>
        <%
            JerseyClientLibros client1 = new JerseyClientLibros();
            GenericType<Libro> genericType = new GenericType<Libro>() {
            };

            Libro l = new Libro();
            l = (Libro) client1.find_XML(genericType, request.getParameter("id"));

            out.write("<p>Titulo: " + l.getTitulo() + "</p>");
            out.write("<p>Autor: " + l.getAutor() + "</p>");
            out.write("<p>Precio: " + l.getPrecio() + "</p>");
            out.write("<p>Isbn: " + l.getIsbn() + "</p>");
            out.write("<p>Editorial:" + l.getIdEditorial().getNombre() + "</p>");

            l.setAutor("Gonzalo del Río");
            client1.edit_XML(l, String.valueOf(l.getId()));

        %>
        <h2>Se ha modificado el profesor al departamento de Matematicas correctamente.</h2>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>


    </body>
</html>
