<%-- 
    Document   : read
    Created on : 23-may-2016, 19:17:51
    Author     : saras
--%>

<%@page import="clienteREST.NewJerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Profesor</title>
    </head>
    <body>
        <h1>Buscar Profesor</h1>
         <form name="formulario Create 2" action="correctoread.jsp" >
            <p>Ponga el DNI del profesor que quieres buscar</p>
            DNI:<input type="text" name="DNI"><br>
            
            <input type="submit" value="Enviar" name="Enviar" />
        </form>
    </body>
</html>
