<%-- 
    Document   : correctoread
    Created on : 23-may-2016, 21:25:56
    Author     : saras
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Libro"%>
<%@page import="entidades.Editorial"%>
<%@page import="clienteREST.JerseyClientLibros"%>
<%@page import="clienteREST.JerseyClientEditorial"%>
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
            JerseyClientLibros client1 = new JerseyClientLibros();
            GenericType<Libro> genericType = new GenericType<Libro>() {
            };

            Libro l = new Libro();
            l = (Libro) client1.find_XML(genericType, request.getParameter("id"));%>
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
                <td><%out.write(l.getTitulo());%></td>
                <td> <%  out.write(l.getAutor());%></td>
                <td> <% out.write(String.valueOf(l.getPrecio()));%></td>
                <td><%  out.print(l.getIsbn());%></td>
                <td> <% out.write(l.getIdEditorial().getNombre());%></td>
            </tr>
        </table>
        
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
