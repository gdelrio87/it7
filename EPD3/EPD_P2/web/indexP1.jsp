<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:45:47
    Author     : Grupo 7 IT 
--%>

<%@include file="clases.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        Aparcamiento aparcamiento = new Aparcamiento();
                        
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
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
        
        <form action="vistaAddP1.jsp" method="get">
            <input type="submit" name="CambiaCorrecto" value="Correctos">
            <input type="submit" name="CambiaSuperado" value="Excedidos">
        </form>
    </body>
</html>
