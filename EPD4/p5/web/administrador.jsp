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
        
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th><th colspan="2"><form action="controladorAdmin" method="get"><button type="submit" name="insertar" value="insertar" ><img style="width:30px" src="iconos/insertar.png" /></button></form></th></tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = (List<Coche>) request.getAttribute("listadoCoches");
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (!sdf.format(listadoAparcamientos.get(i).getHoraSalida()).equals("00:00")) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        %></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
                <td><form action="controladorAdmin" method="get"><button type="submit" name="editar" value="<%=listadoAparcamientos.get(i).getMatricula()%>"><img style="width:30px" src="iconos/editar.png" /></button></form></td>
                <td><form action="controladorAdmin" method="get"><button type="submit" name="eliminar" value="<%=listadoAparcamientos.get(i).getMatricula()%>"><img style="width:30px" src="iconos/eliminar.png" /></button></form></td>
            </tr>

            <%
                }
            %>
        </table>
        
        <form action="controladorAdmin" method="get">
            <input type="submit" name="volver" value="volver" />
        </form>
        
    </body>
</html>
