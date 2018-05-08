<%-- 
    Document   : create
    Created on : 22-may-2016, 20:18:31
    Author     : saras
--%>

<%@page import="clienteREST.NewJerseyClient"%>
<%@page import="clienteREST.Profesor"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Profesor</title>
    </head>
    <body>
        <h1>Se ha creado un nuevo profesor correctamente</h1>
        <%
            NewJerseyClient client1 = new NewJerseyClient();
            Profesor p = new Profesor();
            p.setDni("111111111A");
            p.setNombre("SARA");
            p.setApellidos("Martinez Pozo");
            p.setDepartamento("INFORMATICA");
            p.setFechaAlta(new Date());
            client1.create_XML(p);
        %>
        <form action="index.jsp">

            <input type="submit" value="Atras">
        </form>
    </body>
</html>
