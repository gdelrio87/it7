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

        %>
        <%            if (request.getAttribute("todos") == null) { //muestro los coches que no han superado el tiempo
                List<Coche> listaCoches = new ArrayList<Coche>();
                if (request.getAttribute("CambiaSuperado") != null) {
                    listaCoches = (List<Coche>) request.getAttribute("listadoCochesSuperado");
                } else if (request.getAttribute("CambiaCorrecto") != null) {
                    listaCoches = (List<Coche>) request.getAttribute("listadoCochesCorrecto");
                }
        %>


        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        for (int i = 0; i < listaCoches.size(); i++) {
                    %>
            <tr>
                <td><%= listaCoches.get(i).getMatricula()%></td>
                <td><%= listaCoches.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listaCoches.get(i).getHoraEntrada())%></td>
                <td><% if (!sdf.format(listaCoches.get(i).getHoraSalida()).equals("00:00")) {
                        out.print(sdf.format(listaCoches.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                    %></td>
                <td><%= listaCoches.get(i).getTiempoPermitido()%></td>
            </tr>
            <%
                }
            %>
        </table>
        <form action="controlador" method="get">
            <%
                if (request.getAttribute("CambiaSuperado") != null) {
            %>
            <input type="submit" name="CambiaCorrecto" value="Correcto">
            <%
            } else if (request.getAttribute("CambiaCorrecto") != null) {
            %>
            <input type="submit" name="CambiaSuperado" value="Excedidos">
            <%
                }
            %>
            <input type="submit" name="todos" value="Todos">
        </form>


        <%
            } else if (request.getParameter("todos") != null) {

                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
