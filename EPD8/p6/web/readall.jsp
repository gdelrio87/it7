<%-- 
    Document   : readall
    Created on : 26-may-2016, 14:10:08
    Author     : saras
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javax.ws.rs.core.GenericType"%>

<%@page import="java.util.List"%>
<%@page import="entidades.Libro"%>
<%@page import="entidades.Editorial"%>
<%@page import="clienteREST.JerseyClientLibros"%>
<%@page import="clienteREST.JerseyClientEditorial"%>
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
            JerseyClientLibros client1 = new JerseyClientLibros();
            GenericType<List<Libro>> genericType = new GenericType<List<Libro>>() {
            };

            List<Libro> data = new ArrayList<Libro>();

            data = client1.findAll_XML(genericType);
        %>
        <table border="1">
            <tr>
                <th>
                    TITULO
                </th>
                <th>
                    AUTOR
                </th>
                <th>
                    PRECIO
                </th>
                <th>
                    ISBN
                </th>
                <th>
                    Editorial
                </th>

            </tr>
            <tr>
                <%
                    for (Libro l : data) {%>

                <td><%out.write(l.getTitulo());%></td>
                <td> <%  out.write(l.getAutor());%></td>
                <td> <% out.write(String.valueOf(l.getPrecio()));%></td>
                <td><%  out.print(l.getIsbn());%></td>
                <td> <% out.write(l.getIdEditorial().getNombre());%></td>

            </tr>
            <%}%>

        </table>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
