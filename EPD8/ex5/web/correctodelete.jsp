<%-- 
    Document   : correctodelete
    Created on : 23-may-2016, 21:17:25
    Author     : saras
--%>

<%@page import="clienteREST.NewJerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Correcto Delete</title>
    </head>
    <body>
        <h1>Se ha eliminado el profesor correctamente. Gracias</h1>

        <%
            NewJerseyClient client1 = new NewJerseyClient();

            client1.remove(request.getParameter("DNI"));

        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
