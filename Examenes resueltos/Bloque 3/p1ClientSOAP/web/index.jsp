<%-- 
    Document   : index
    Created on : 19-may-2018, 13:54:30
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%-- start web service invocation --%><hr/>
        <%
            try {
                webservicesoap.CalculaComparaFechas_Service service = new webservicesoap.CalculaComparaFechas_Service();
                webservicesoap.CalculaComparaFechas port = service.getCalculaComparaFechasPort();
                // TODO initialize WS operation arguments here
                java.lang.String fecha = "19-8-2018";
                java.lang.String dia = "Domingo";
                // TODO process result here
                boolean result = port.calculaComparaFecha(fecha, dia);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>


    </body>
</html>
