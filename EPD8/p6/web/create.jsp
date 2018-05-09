<%-- 
    Document   : create
    Created on : 22-may-2016, 20:18:31
    Author     : saras
--%>

<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="entidades.Libro"%>
<%@page import="entidades.Editorial"%>
<%@page import="clienteREST.JerseyClientLibros"%>
<%@page import="clienteREST.JerseyClientEditorial"%>
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
            JerseyClientLibros client1 = new JerseyClientLibros();
            JerseyClientEditorial clientE = new JerseyClientEditorial();
            GenericType<Editorial> genericType = new GenericType<Editorial>(){};
            Libro l = new Libro(9, "Gonzalo", "EDP8", 55, 2323);
            Editorial e = clientE.find_XML(genericType, "1");
            
            l.setIdEditorial(e);
            client1.create_XML(l);
        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
