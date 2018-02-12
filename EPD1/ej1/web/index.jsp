<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    //Declaración de variables
    Locale locale;
    Calendar hoy;
    int hora, minutos, numDia, anio;
    String cadenaMes;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 1</title>
    </head>
    <body>

        <%
            //inicialización de variables
            locale = Locale.getDefault();
            hoy = Calendar.getInstance();
            hora = hoy.get(Calendar.HOUR_OF_DAY);
            minutos = hoy.get(Calendar.MINUTE);
            numDia = hoy.get(Calendar.DAY_OF_MONTH);
            cadenaMes = hoy.getDisplayName(Calendar.MONTH, Calendar.LONG, locale);
            anio = hoy.get(Calendar.YEAR);

            if (hora >= 5 && hora < 12) {
                out.write("Buenos días");
            } else if (hora >= 12 && hora < 21) {
                out.write("Buenas tardes");
            } else if (hora >= 21 && hora < 5) {
                out.write("Buenas noches");
            }
            out.write(", hoy es " + numDia + " de " + (cadenaMes.substring(0, 1).toUpperCase() + cadenaMes.substring(1, cadenaMes.length()).toLowerCase()) + " de " + anio);

        %>

    </body>
</html>
