<%-- 
    Document   : redireccion
    Created on : 15-feb-2018, 21:32:53
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EPD2 - P2 - Grupo 7 IT</title>
    </head>
    <body>
        <% response.sendRedirect(request.getParameter("URL")); %>
    </body>
</html>
