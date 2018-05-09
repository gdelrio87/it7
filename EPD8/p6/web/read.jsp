<%-- 
    Document   : read
    Created on : 23-may-2016, 19:17:51
    Author     : saras
--%>

<%@page import="entidades.Libro"%>
<%@page import="entidades.Editorial"%>
<%@page import="clienteREST.JerseyClientLibros"%>
<%@page import="clienteREST.JerseyClientEditorial"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Libro</title>
    </head>
    <body>
        <h1>Buscar Libro</h1>
         <form name="formulario Create 2" action="correctoread.jsp" >
            <p>Ponga el Titulo que quieres buscar</p>
            Id del libro: <input type="text" name="id"><br>
            
            <input type="submit" value="Enviar" name="Enviar" />
        </form>
    </body>
</html>
