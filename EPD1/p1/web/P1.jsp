<%-- 
    Document   : P1
    Created on : 07-feb-2018, 17:05:46
    Author     : Grupo7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nombre = "";
    String apellidos = "";
    String email = "";
    String estudios = "";
    String bloques = "";
    String nota = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EPD1 Problema 1</title>
    </head>
    <body>
        <form method="get" action="P1.jsp">
            Nombre: <input type="text" name="nombre" /><br/>
            Apellidos: <input type="text" name="apellidos" /><br/>
            Email: <input type="text" name="email" /><br/>
            Ha estudiado antes IT ?: <input type="radio" name="estudio" value="1"><input type="radio" name="estudio" value="0"/><br/>
            En caso afirmativo, indicar el o los bloques que encontró más difíciles: <input type="text" name="bloques" /><br/>
            En caso negativo, indicar qué nota espera obtener en la asignatura: <input type="text" name="nota" /><br/>
            <input type="submit" name="enviar"/>
        </form>
        <%
            nombre = request.getParameter("nombre");
            apellidos = request.getParameter("apellidos");
            email = request.getParameter("email");
            estudios = request.getParameter("estudio");
            bloques = request.getParameter("bloques");
            nota = request.getParameter("nota");

            if (nombre != "" && nombre != null) {
                out.print("Nombre: "+nombre+"<br/>");
            }

            if (apellidos != "" && apellidos != null) {
                out.print("Apellidos: "+apellidos+"<br/>");
            }

            if (email != "" && email != null) {
                out.print("Email: "+email+"<br/>");
            }

            if (estudios != "" && estudios != null) {
                if(Integer.parseInt(estudios) == 1){
                    out.print("Bloques que le resulto dificil: "+bloques);
                } else {
                    out.print("Nota esperada: "+nota);
                }
            }

        %>
    </body>
</html>
