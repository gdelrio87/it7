<%-- 
    Document   : index
    Created on : 13-feb-2018, 11:53:38
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

            if (request.getParameter("enviar") != null) {
                String nombre = request.getParameter("nombre").trim();
                String apellidos = request.getParameter("apellidos").trim();
                String sexo = request.getParameter("sexo").trim();
                if (!nombre.equals("") && !apellidos.equals("") && !sexo.equals("")) {
                    session.setAttribute("nombre", nombre);
                    session.setAttribute("apellidos", apellidos);
                    session.setAttribute("sexo", sexo);
                }
            }

            boolean haySession = false;
            String sessionNombre = (String) session.getAttribute("nombre");
            String sessionApellidos = (String) session.getAttribute("apellidos");
            String sessionSexo = (String) session.getAttribute("sexo");

            if (sessionNombre != null && sessionApellidos != null && sessionSexo != null) {
                haySession = true;
            }

            if (!haySession) {
        %>
        <form method="get" action="index.jsp">
            Nombre: <input type="text" name="nombre" /><br/>
            Apellidos: <input type="text" name="apellidos" /><br/>

            <input type="radio" name="sexo" value="1" required>Hombre</input>
            <input type="radio" name="sexo" value="0" required>Mujer</input><br/>
            <input type="submit" name="enviar" />
        </form>
        <%
        } else {
            if (sessionSexo.equals("1")) {
        %>
        <jsp:forward page="hombre.jsp" />
        <%
        } else {
        %>
        <jsp:forward page="mujer.jsp" />
        <%
                }
            }
        %>
    </body>
</html>
