<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    //declaración variables
    String nombre, apellidos, estado_civil, trabaja;
    double ingresos, gastos;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Inicialización
            String nombre = "";
            String apellidos = "";
            String estado_civil = "";
            String trabaja = "";
            double ingresos = 0.0;
            double gastos = 0.0;

            boolean errores = false;
            String cadenaErrores = "";

            nombre = request.getParameter("nombre").trim();
            if (nombre.equals("") || nombre == null) {
                errores = true;
                cadenaErrores += "El campo nombre debe contener letras.<br>";
            }

            apellidos = request.getParameter("apellidos").trim();
            if (apellidos.equals("") || apellidos == null) {
                errores = true;
                cadenaErrores += "El campo apellidos debe contener letras.<br>";
            }

            estado_civil = request.getParameter("estado-civil");

            trabaja = request.getParameter("trabaja");

            try {
                ingresos = Double.parseDouble(request.getParameter("ingresos").trim());

            } catch (NumberFormatException nfe) {
                errores = true;
                cadenaErrores += "El campo ingresos debe ser numerico.<br>";
            }

            try {
                gastos = Double.parseDouble(request.getParameter("gastos").trim());

            } catch (NumberFormatException nfe) {
                errores = true;
                cadenaErrores += "El campo gastos debe ser numerico.<br>";
            }

            if (errores) {
                out.write(cadenaErrores);
            } else {


        %>

        <h2>Datos cliente</h2>

        Nombre: <%= nombre%> <br>
        Apellidos: <%= apellidos%> <br>
        Estado civil: <%= estado_civil%> <br>
        Trabaja: <%= trabaja%> <br>
        Ingresos (anual en €): <%= ingresos%> <br>
        Gastos (anual en €): <%= gastos%> <br>

        <h2>¿Conceder crédito?</h2>
        <%
                if (trabaja.equals("Si") && ingresos > gastos || estado_civil.equals("casado") && trabaja.equals("Si") && ingresos / 2 >= gastos) {
                    out.write("Si conceder crédito.");
                } else {
                    out.write("No conceder crédito.");
                }

            }
        %>



    </body>
</html>
