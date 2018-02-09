<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Datos cliente</h2>

        Nombre: <%= request.getParameter("nombre") %> <br>
        Apellidos: <%= request.getParameter("apellidos") %> <br>
        Estado civil: <%= request.getParameter("estado-civil") %> <br>
        Trabaja: <%= request.getParameter("trabaja") %> <br>
        Ingresos (anual en €): <%= request.getParameter("ingresos") %> <br>
        Gastos (anual en €): <%= request.getParameter("gastos") %> <br>
        
        <h2>¿Conceder crédito?</h2>
        <% 
            if( request.getParameter("trabaja").equals("Si") && Integer.parseInt(request.getParameter("ingresos")) > Integer.parseInt(request.getParameter("gastos")) || request.getParameter("estado-civil").equals("casado") && request.getParameter("trabaja").equals("Si") && Integer.parseInt(request.getParameter("ingresos"))/2  >= Integer.parseInt(request.getParameter("gastos")) ){
                out.write("Si conceder crédito.");
            } else {
                out.write("No conceder crédito.");
            }
        %>
        
        
        
    </body>
</html>
