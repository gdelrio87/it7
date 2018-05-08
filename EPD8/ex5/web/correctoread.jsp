<%-- 
    Document   : correctoread
    Created on : 23-may-2016, 21:25:56
    Author     : saras
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="clienteREST.NewJerseyClient"%>
<%@page import="clienteREST.Profesor"%>
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
            NewJerseyClient client1 = new NewJerseyClient();
            GenericType<Profesor> genericType = new GenericType<Profesor>() {
            };

            Profesor  p = new Profesor();
            p = (Profesor) client1.find_XML(genericType, request.getParameter("DNI"));
           
                out.write("<p>DNI: " + p.getDni()+"</p>");
                 out.write("<p>Nombre: " + p.getNombre()+"</p>");
                 out.write("<p>Apellido: " + p.getApellidos()+"</p>");
                 out.write("<p>Fecha Alta: " + p.getFechaAlta()+"</p>");
                 out.write("<p>Departamento:" + p.getDepartamento()+"</p>");
            

        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
