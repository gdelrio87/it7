<%-- 
    Document   : index
    Created on : 14-feb-2018, 18:13:46
    Author     : Grupo7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="resultado.jsp" method="post">
            Email: <input type="text" name="email" value=""><br>
            Nombre: <input type="text" name="nombre" value=""><br>
            Contraseña: <input type="password" name="pass" value=""><br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
