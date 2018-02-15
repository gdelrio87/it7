<%-- 
    Document   : reenvio
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
        %>  <jsp:forward page="redireccion.jsp">
            <jsp:param name="URL" value="http://java.sun.com/javaee/5/docs/api/javax/servlet/http/HttpServletRequest.html"/>
        </jsp:forward>
        <%
        } else if (request.getParameter("objetos").equals("out")) {

        %>  <jsp:forward page="redireccion.jsp">
            <jsp:param name="URL" value="http://java.sun.com/javaee/5/docs/api/javax/servlet/jsp/JspWriter.html"/>
        </jsp:forward>
        <%        } else if (request.getParameter("objetos").equals("response")) {

        %>  <jsp:forward page="redireccion.jsp">
            <jsp:param name="URL" value="http://java.sun.com/javaee/5/docs/api/javax/servlet/http/HttpServletResponse.html"/>
        </jsp:forward>
        <%        } else if (request.getParameter("objetos").equals("config")) {

        %>  <jsp:forward page="redireccion.jsp">
            <jsp:param name="URL" value="http://java.sun.com/javaee/5/docs/api/javax/servlet/ServletConfig.html"/>
        </jsp:forward>
        <%        } else if (request.getParameter("objetos").equals("application")) {

        %>  <jsp:forward page="redireccion.jsp">
            <jsp:param name="URL" value="http://java.sun.com/javaee/5/docs/api/javax/servlet/ServletContext.html"/>
        </jsp:forward>
        <%        } else if (request.getParameter("objetos").equals("session")) {

        %>  <jsp:forward page="redireccion.jsp">
            <jsp:param name="URL" value="http://java.sun.com/javaee/5/docs/api/javax/servlet/http/HttpSession.html"/>
        </jsp:forward>
        <%                }
            }
        %>
    </body>
</html>
