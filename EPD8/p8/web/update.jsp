<%-- 
    Document   : update
    Created on : 23-may-2016, 19:16:37
    Author     : saras
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifica Pelicula</title>
    </head>
    <body>
        <h1>Modifica Pelicula</h1>
        <form name="formulario Read" action="correctoupdate.jsp" >
            <p>Ponga el ID de la pelicula que quieres modificar</p>
            ID de la pelicula: <input type="text" name="id"><br>

            <input type="submit" value="Enviar" name="Enviar" />
        </form>

    </body>
</html>
