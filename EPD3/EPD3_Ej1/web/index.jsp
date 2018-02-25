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
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = Aparcamiento.listadoCoches();
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
    </body>
</html>
