<%-- 
    Document   : correctoupdate
    Created on : 24-may-2016, 19:44:53
    Author     : saras
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="javax.ejb.Local"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="clienteREST.NewJerseyClient"%>
<%@page import="clienteREST.Profesor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Profesor</title>
    </head>
    <body>
        <h1>Editar Profesor</h1>
        <%
            NewJerseyClient client1 = new NewJerseyClient();
            GenericType<Profesor> genericType = new GenericType<Profesor>() {
            };

            Profesor p = new Profesor();
            p = (Profesor) client1.find_XML(genericType, request.getParameter("DNI"));

            out.write("<p>DNI: " + p.getDni() + "</p>");
            out.write("<p>Nombre: " + p.getNombre() + "</p>");
            out.write("<p>Apellido: " + p.getApellidos() + "</p>");
            out.write("<p>Fecha Alta: " + p.getFechaAlta() + "</p>");
            out.write("<p>Departamento:" + p.getDepartamento() + "</p>");

            p.setDepartamento("Matematicas");
            client1.edit_XML(p, p.getDni());

        %>
        <h2>Se ha modificado el profesor al departamento de Matematicas correctamente.</h2>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>


    </body>
</html>
