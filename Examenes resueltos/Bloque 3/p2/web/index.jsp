<%-- 
    Document   : index
    Created on : 19-may-2018, 14:12:44
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Evaluacion WebService. Cliente SOAP Fechas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Introduce una fecha en fomato "dd-mm-yyyy": </h1>
        <form action="newjsp.jsp" method="get">
            <label for="fecha">Fecha: </label><input name="fecha" id="fecha" type="text" />
            <input type="submit" value="Obtener la fecha" />
        </form>
        <h1>Comprueba tu fecha: </h1>
        <form action="newjsp.jsp" method="get">
            <label for="comprobarFecha">Fecha: </label><input  name="comprobarFecha" id="comprobarFecha" type="text" />
            <label for="comprobarDia">Dia:  </label><input name="comprobarDia" id="comprobarDia" type="text" />
            <input type="submit" value="Comprobar fecha" />
        </form>
    </body>
</html>


