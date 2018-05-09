<%-- 
    Document   : correctodelete
    Created on : 23-may-2016, 21:17:25
    Author     : saras
--%>

<%@page import="entidades.Libro"%>
<%@page import="entidades.Editorial"%>
<%@page import="clienteREST.JerseyClientLibros"%>
<%@page import="clienteREST.JerseyClientEditorial"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Correcto Delete</title>
    </head>
    <body>
        <h1>Se ha eliminado el Libro correctamente. Gracias</h1>

        <%
            JerseyClientLibros client1 = new JerseyClientLibros();

            client1.remove(request.getParameter("id"));

        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
