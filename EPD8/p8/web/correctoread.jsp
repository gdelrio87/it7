<%-- 
    Document   : correctoread
    Created on : 23-may-2016, 21:25:56
    Author     : saras
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Pelicula"%>
<%@page import="clienteREST.JerseyClientPelicula"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Profesor</title>
    </head>
    <body>
        <h1>Se ha encontrado el profesor correctamente. Gracias</h1>
        <%
            JerseyClientPelicula client1 = new JerseyClientPelicula();
            GenericType<Pelicula> genericType = new GenericType<Pelicula>() {
            };

            Pelicula p = new Pelicula();
            p = (Pelicula) client1.find_XML(genericType, request.getParameter("id"));%>
        <table border="1">
            <tr>
                <th>
                    NOMBRE
                </th>
                <th>
                    PAIS
                </th>
                <th>
                    IDIOMA
                </th>
                <th>
                    FECHA ESTRENO
                </th>
                <th>
                    FECHA VIDEO
                </th>

            </tr>
            <tr>
                <td><%out.write(p.getNombre());%></td>
                <td> <%  out.write(p.getPais());%></td>
                <td> <% out.write(p.getIdioma());%></td>
                <td> <% out.write(p.getFechaEstreno().toString());%></td>
                <td> <% out.write(p.getFechaVideo().toString());%></td>
            </tr>
        </table>

        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
