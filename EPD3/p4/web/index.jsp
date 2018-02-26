<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:43:36
    Author     : Grupo 7 IT 
--%>

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
            if (request.getAttribute("enviar") == null && request.getAttribute("aparcados") == null) {
        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = (List<Coche>) request.getAttribute("listadoCoches");
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        ;%></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
            </tr>

            <%
                }
            %>
        </table>
        <%
        } else if (request.getAttribute("enviar") != null && request.getAttribute("aparcados") == null) {
            String buscar = (String) request.getParameter("buscar");
        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = (List<Coche>) request.getAttribute("listadoCoches");
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                            if (listadoAparcamientos.get(i).getMatricula().substring(0, buscar.length()).equals(buscar)) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        ;%></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
            </tr>

            <%
                    }
                }
            %>
        </table>
        <%    } else if (request.getAttribute("buscar") == null && request.getAttribute("aparcados") != null) {

        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = (List<Coche>) request.getAttribute("listadoCoches");
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                            if (listadoAparcamientos.get(i).getHoraSalida() == null) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        ;%></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
            </tr>

            <%
                    }
                }
            %>
        </table>
        <%
            }
        %>
        <form action="controlador" method="get">
            Buscar inicio matr&iacute;cula: <input type="text" name="buscar" />
            <input type="submit" name="enviar" value="Enviar" />
        </form>
        <form action="controlador" method="get">
            Buscar coches que se encuentran en el aparcamiento: <input type="submit" name="aparcados" value="Aparcados"   />
        </form>
        <form action="controlador" method="get">
            Mostar coches que NO se han excedido en el tiempo: <input type="submit" name="CambiaCorrecto" value="Correctos">
            <br />
            Mostar coches que S&Iacute; se han excedido en el tiempo: <input type="submit" name="CambiaSuperado" value="Excedidos">
        </form>
    </body>
</html>
