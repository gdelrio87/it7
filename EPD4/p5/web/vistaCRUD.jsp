<%-- 
    Document   : vistaCRUD
    Created on : 08-mar-2018, 13:01:40
    Author     : Grupo 7 IT
--%>

<%@page import="java.sql.Time"%>
<%@page import="Modelo.Coche"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="controladorAdmin" type="get">
            <table border="1">
                <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                        <% if (request.getAttribute("CRUD").equals("insertar")) { %>
                <tr>
                    <td><input type="text" name="matricula"/></td>
                    <td><input type="text" name="modelo"/></td>
                    <td><input type="time" name="horaEntrada"/></td>
                    <td><input type="time" name="horaSalida"/></td>
                    <td><input type="number" name="tiempoPermitido"/></td></tr>
                        <%} else if (request.getAttribute("CRUD").equals("editar")) {
                            String matricula = ((Coche) request.getAttribute("coche")).getMatricula();
                            String modelo = ((Coche) request.getAttribute("coche")).getModelo();
                            Time horaEntrada = ((Coche) request.getAttribute("coche")).getHoraEntrada();
                            Time horaSalida = ((Coche) request.getAttribute("coche")).getHoraSalida();
                            int tiempoPermitido = ((Coche) request.getAttribute("coche")).getTiempoPermitido();
                        %>
                <tr>
                    <td><input type="text" name="matricula" value="<%=matricula%>"/></td>
                    <td><input type="text" name="modelo" value="<%=modelo%>" /></td>
                    <td><input type="time" name="horaEntrada" value="<%=horaEntrada%>"/></td>
                    <td><input type="time" name="horaSalida" value="<%=horaSalida%>"/></td>
                    <td><input type="number" name="tiempoPermitido" value="<%=tiempoPermitido%>" /></td>
                </tr>
                        <%}%>
            </table>
            <% if (request.getAttribute("CRUD").equals("insertar")) { %>
            <input type="submit" name="insertarJDBC" value="insertar"/>
            <%} else if (request.getAttribute("CRUD").equals("editar")) {%>
            <input name="matriculaOriginal" type="hidden" value="<%=((Coche) request.getAttribute("coche")).getMatricula()%>" />
            <input type="submit" name="editarJDBC" value="editar"/>
            <%}%>
        </form>
    </body>
</html>
