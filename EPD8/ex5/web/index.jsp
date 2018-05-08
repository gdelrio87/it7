<%-- 
    Document   : index
    Created on : 21-may-2016, 21:40:37
    Author     : saras
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="java.util.List"%>
<%@page import="clienteREST.Profesor"%>
<%@page import="clienteREST.NewJerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
        <h1>Menu</h1>
       
        <form  name="formulario Create" action="create.jsp">
            <input type="submit" value="Crear Nuevo Profesor">
            
            
        </form>
        <form  name="formulario Read" action="read.jsp">
            <input type="submit" value="Mostrar Profesor">
            
            
        </form>
        
        <form  name="formulario Read All" action="readall.jsp">
            <input type="submit" value="Mostrar todos los Profesores">
            
            
        </form>
        <form  name="formulario Update" action="update.jsp">
            <input type="submit" value="Editar Profesor">
            
            
        </form>
           <form  name="formulario Delete" action="delete.jsp">
            <input type="submit" value="Eliminar Profesor">
            
            
        </form>
        
    </body>
</html>
