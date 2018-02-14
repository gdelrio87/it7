<%-- 
    Document   : hombre
    Created on : 13-feb-2018, 11:55:12
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            boolean haySession = false;
            String sessionNombre = (String) session.getAttribute("nombre");
            String sessionApellidos = (String) session.getAttribute("apellidos");
            String sessionSexo = (String) session.getAttribute("sexo");

            if (sessionNombre != null && sessionApellidos != null && sessionSexo != null) {
                haySession = true;
            }

            if (request.getParameter("logout") != null) {

                session.removeAttribute("nombre");
                session.removeAttribute("apellidos");
                session.removeAttribute("sexo");

        %>
        <jsp:forward page="index.jsp"/>
        <%            }

            if (haySession) {
        %>                
        <h1>Bienvenida</h1>
        <%
            out.print("Nombre: "+ sessionNombre +"<br/>");
            out.print("Apellidos: "+ sessionApellidos +"<br/>");
            out.print("Sexo: "+ sessionSexo +"<br/>");

        %>        
        <form action="hombre.jsp" method="get">
            <input type="submit" name="logout" value="Deslogarse"/>
        </form>
        <%            } else {
        %>
        <jsp:forward page="index.jsp"/>
        <%
            }
        %>
    </body>
</html>
