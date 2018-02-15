<%-- 
    Document   : redireccionar
    Created on : 15-feb-2018, 13:35:52
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EPD2 - Ej2 - Grupo 7</title>
    </head>
    <body>
        <%
            if (request.getParameter("Enviar") != null) {
                if (request.getParameter("objetos").equals("request")) {
                    response.sendRedirect("http://java.sun.com/javaee/5/docs/api/javax/servlet/http/HttpServletRequest.html");
                } else if (request.getParameter("objetos").equals("out")) {
                    response.sendRedirect("http://java.sun.com/javaee/5/docs/api/javax/servlet/jsp/JspWriter.html");
                } else if (request.getParameter("objetos").equals("response")) {
                    response.sendRedirect("http://java.sun.com/javaee/5/docs/api/javax/servlet/http/HttpServletResponse.html");
                } else if (request.getParameter("objetos").equals("config")) {
                    response.sendRedirect("http://java.sun.com/javaee/5/docs/api/javax/servlet/ServletConfig.html");
                } else if (request.getParameter("objetos").equals("application")) {
                    response.sendRedirect("http://java.sun.com/javaee/5/docs/api/javax/servlet/ServletContext.html");
                } else if (request.getParameter("objetos").equals("session")) {
                    response.sendRedirect("http://java.sun.com/javaee/5/docs/api/javax/servlet/http/HttpSession.html");
                }
            }
        %>
    </body>
</html>
