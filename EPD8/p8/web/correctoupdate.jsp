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
<%@page import="entidades.Pelicula"%>
<%@page import="clienteREST.JerseyClientPelicula"%>
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
            JerseyClientPelicula client1 = new JerseyClientPelicula();
            GenericType<Pelicula> genericType = new GenericType<Pelicula>() {
            };

            Pelicula p = new Pelicula();
            p = (Pelicula) client1.find_XML(genericType, request.getParameter("id"));

            out.write("<p>Nombre " + p.getNombre() + "</p>");
            out.write("<p>Pais: " + p.getPais() + "</p>");
            out.write("<p>Idioma: " + p.getIdioma() + "</p>");
            out.write("<p>Fecha estreno: " + p.getFechaEstreno().toString() + "</p>");
            out.write("<p>Fecha video:" + p.getFechaVideo().toString() + "</p>");

            p.setPais("Japon");
            client1.edit_XML(p, String.valueOf(p.getId()));

        %>
        <h2>Se ha modificado el profesor al departamento de Matematicas correctamente.</h2>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>

    </body>
</html>
