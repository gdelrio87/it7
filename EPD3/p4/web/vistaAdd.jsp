<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:43:36
    Author     : Grupo 7 IT
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
            List<Coche> listaSuperados = (List<Coche>) request.getAttribute("listadoCochesSuperado");
            List<Coche> listaCorrecto = (List<Coche>) request.getAttribute("listadoCochesCorrecto");

        %>
        <%            if (request.getAttribute("CambiaSuperado") == null && request.getAttribute("todos") == null) { //muestro los coches que no han superado el tiempo
        %>
        <form action="controlador" method="get">
            <table border="1">
                <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                        <%
                            for (int i = 0; i < listaCorrecto.size(); i++) {
                        %>
                <tr>
                    <td><%= listaCorrecto.get(i).getMatricula()%></td>
                    <td><%= listaCorrecto.get(i).getModelo()%></td>                
                    <td><%=  sdf.format(listaCorrecto.get(i).getHoraEntrada())%></td>
                    <td><% if (listaCorrecto.get(i).getHoraSalida() != null) {
                            out.print(sdf.format(listaCorrecto.get(i).getHoraSalida()));
                        } else {
                        %>
                        --
                        <%
                            }
                        %></td>
                    <td><%= listaCorrecto.get(i).getTiempoPermitido()%></td>
                </tr>
                <%
                    }
                %>
            </table>
            <input type="submit" name="CambiaSuperado" value="Excedidos">
            <input type="submit" name="todos" value="Todos">
        </form>

        <%
        } else if (request.getAttribute("CambiaSuperado") != null) { //muestro los coches que si han superado el tiempo, con su boton para cambiar
        %>

        <form action="" method="get">
            <table border="1">
                <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                        <%
                            for (int i = 0; i < listaSuperados.size(); i++) {
                        %>
                <tr>
                    <td><%= listaSuperados.get(i).getMatricula()%></td>
                    <td><%= listaSuperados.get(i).getModelo()%></td>                
                    <td><%=  sdf.format(listaSuperados.get(i).getHoraEntrada())%></td>
                    <td><% if (listaSuperados.get(i).getHoraSalida() != null) {
                            out.print(sdf.format(listaSuperados.get(i).getHoraSalida()));
                        } else {
                        %>
                        --
                        <%
                            }
                        %></td>
                    <td><%= listaSuperados.get(i).getTiempoPermitido()%></td>
                </tr>
                <%
                    }
                %>
            </table>
            <input type="submit" name="CambiaCorrecto" value="Correctos">
            <input type="submit" name="todos" value="Todos">
        </form>

        <%
            } else if (request.getParameter("todos") != null) {

                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
