<%-- 
    Document   : index
    Created on : 17-abr-2018, 11:38:51
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page import="libros.Libro"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Almacen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Almacen almacen = new Almacen();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border=1>
            <th>Titulo</th>
            <%  List libros = almacen.consultaLibrosDisponibles();
            
            for(int i = 0; i < libros.size(); i++){
                Libro libro = (Libro)libros.get(i);
                %>
                <tr><td><%= libro.getTitulo()%></td></tr>
                <%
            }
            %>
            
        </table>
    </body>
</html>
