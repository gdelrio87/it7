<%-- 
    Document   : readall
    Created on : 26-may-2016, 14:10:08
    Author     : saras
--%>

<%@page import="clienteREST.NewJerseyClient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.ws.rs.core.GenericType"%>

<%@page import="java.util.List"%>
<%@page import="clienteREST.NewJerseyClient"%>
<%@page import="clienteREST.Profesor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar todos los Profesores</title>
    </head>
    <body>
        <h1>Mostrar todos los profesores</h1>
        <%
            NewJerseyClient client1 = new NewJerseyClient();
            GenericType<List<Profesor>> genericType = new GenericType<List<Profesor>>() {
            };

            List<Profesor> data = new ArrayList<Profesor>();

            data = client1.findAll_XML(genericType);
        %>
        <table border="1">
            <tr>
                <th>
                    DNI
                </th>
                <th>
                    Nombre
                </th>
                <th>
                    Apellidos
                </th>
                <th>
                    Fecha de Alta
                </th>
                <th>
                    Departamento
                </th>

            </tr>
            <tr>
                <%
                    for (Profesor p : data) {%>

                <td><%out.write(p.getDni());%></td>
                <td> <%  out.write(p.getNombre());%></td>
                <td> <% out.write(p.getApellidos());%></td>
                <td><%  out.print(p.getFechaAlta());%></td>
                <td> <% out.write(p.getDepartamento());%></td>

            </tr>
            <%}%>

        </table>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
