<%-- 
    Document   : create
    Created on : 22-may-2016, 20:18:31
    Author     : saras
--%>

<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="entidades.Pelicula"%>
<%@page import="clienteREST.JerseyClientPelicula"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Profesor</title>
    </head>
    <body>
        <h1>Se ha creado un nuevo libro correctamente</h1>
        <%
            JerseyClientPelicula client1 = new JerseyClientPelicula();
            GenericType<Pelicula> genericType = new GenericType<Pelicula>(){};
            Pelicula p = new Pelicula(null, "", new Date(10,20,20), new Date(10,20,20), "", "");

            client1.create_XML(p);
        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
