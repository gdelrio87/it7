<%-- 
    Document   : read
    Created on : 23-may-2016, 19:17:51
    Author     : saras
--%>

<%@page import="entidades.Pelicula"%>
<%@page import="clienteREST.JerseyClientPelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Pelicula</title>
    </head>
    <body>
        <h1>Buscar Pelicula</h1>
         <form name="formulario Create 2" action="correctoread.jsp" >
            
            Id de la pel&iacute;cula: <input type="text" name="id"><br>
            
            <input type="submit" value="Enviar" name="Enviar" />
        </form>
    </body>
</html>
