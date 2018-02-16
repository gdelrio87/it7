<%-- 
    Document   : index
    Created on : 16-feb-2018, 17:38:03
    Author     : Grupo7 IT
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    Date fecha;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ej3</title>
    </head>
    <body>

        <%
            if (request.getParameter("invalidar") != null) {
                if (session != null) {
                    session.invalidate();
                    session = request.getSession(true);
                }
            }
            
            fecha = new Date(session.getCreationTime());
            
            
            
            
            SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
            String fechaFormat = df.format(fecha);
        %>
        <h2>Datos sesión</h2>
        ID: <%= session.getId()%> <br>
        Fecha de creación: <%= fechaFormat %> <br>
        Duración: <%= session.getMaxInactiveInterval()/60 %> min.

        <form action="index.jsp" method="post">
            <input type="submit" name="invalidar" value="Invalidar" />
        </form>

    </body>
</html>
