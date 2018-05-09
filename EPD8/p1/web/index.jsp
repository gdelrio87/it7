<%-- 
    Document   : index
    Created on : 09-may-2018, 11:44:24
    Author     : Gonza
--%>

<%@page import="clienteRest.JerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get">
            Cadena: <input type="text" name="cadena">
            <input type="submit" name="enviar" value="Enviar" >
        </form>
    </form>
    <%
        if (request.getParameter("enviar") != null) {
            JerseyClient client = new JerseyClient();
            String cadena = client.contadorLetrasHtml(request.getParameter("cadena"));
            out.println(cadena);
        }
    %>
</body>
</html>
