<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    Locale locale = Locale.getDefault();
    Calendar hoy = Calendar.getInstance();
    int hora = hoy.get(Calendar.HOUR_OF_DAY);
    int minutos = hoy.get(Calendar.MINUTE);
    int numDia = hoy.get(Calendar.DAY_OF_MONTH);
    String cadenaMes = hoy.getDisplayName(Calendar.MONTH, Calendar.LONG, locale);
    int anio = hoy.get(Calendar.YEAR);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 1</title>
    </head>
    <body>
        
        <% 
            if(hora >= 5 && hora < 12){
                out.write("Buenos días");
            } else if(hora >= 12 && hora < 21){
                out.write("Buenas tardes");
            } else if(hora >= 21 && hora < 5){
                out.write("Buenas noches");
            }
            out.write(", hoy es " + numDia + " de " + ( cadenaMes.substring(0, 1).toUpperCase()+ cadenaMes.substring(1, cadenaMes.length()).toLowerCase() ) + " de " + anio);

        %>
        
    </body>
</html>
