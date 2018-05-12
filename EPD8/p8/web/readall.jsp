<%-- 
    Document   : readall
    Created on : 26-may-2016, 14:10:08
    Author     : saras
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javax.ws.rs.core.GenericType"%>

<%@page import="java.util.List"%>
<%@page import="entidades.Pelicula"%>
<%@page import="clienteREST.JerseyClientPelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar todos los Profesores</title>
    </head>
    <body>
        <h1>Mostrar todos los libros</h1>
        <%
            JerseyClientPelicula client1 = new JerseyClientPelicula();
            GenericType<List<Pelicula>> genericType = new GenericType<List<Pelicula>>() {
            };

            List<Pelicula> data = new ArrayList<Pelicula>();

            data = client1.findAll_XML(genericType);
        %>
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
                <%
                    for (Pelicula p : data) {%>

                <td><%out.write(p.getNombre());%></td>
                <td> <%  out.write(p.getPais());%></td>
                <td> <% out.write(p.getIdioma());%></td>
                <td> <% out.write(p.getFechaEstreno().toString());%></td>
                <td> <% out.write(p.getFechaVideo().toString());%></td>

            </tr>
            <%}%>

        </table>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
