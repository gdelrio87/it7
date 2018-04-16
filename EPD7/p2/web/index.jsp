<%-- 
    Document   : index
    Created on : 16-abr-2018, 20:24:47
    Author     : albertocardenasjimenez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Generar contraseña</h1>
        <form method="post" action="">
            Tamaño 
            <input type="text" name="numPass" />
            <input type="submit" value="Generar" />
        </form>
        <%
            if (request.getParameter("numPass") != null) {
                ej1.GenerarPass_Service service = new ej1.GenerarPass_Service();
                ej1.GenerarPass port = service.getGenerarPassPort();
                try {
                    int numPass = Integer.parseInt(request.getParameter("numPass"));
                    java.lang.String result = port.generarPass(numPass);
                    out.println("<br>Contraseña generada = " + result);
                } catch (Exception e) {
                    out.println( "<br>Debes introducir un número<br>");
                    out.println( e.toString());
                }

            }
        %>


    </body>
</html>
