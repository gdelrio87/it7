<%-- 
    Document   : correctodelete
    Created on : 23-may-2016, 21:17:25
    Author     : saras
--%>

<%@page import="entidades.Pelicula"%>
<%@page import="clienteREST.JerseyClientPelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Correcto Delete</title>
    </head>
    <body>
        <h1>Se ha eliminado la película correctamente. Gracias</h1>

        <%
            JerseyClientPelicula client1 = new JerseyClientPelicula();

            client1.remove(request.getParameter("id"));

        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
