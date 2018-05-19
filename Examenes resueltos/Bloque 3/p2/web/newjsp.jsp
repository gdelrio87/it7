<%-- 
    Document   : newjsp
    Created on : 19-may-2018, 14:17:14
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
	java.lang.String fecha = request.getParameter("comprobarFecha");
	java.lang.String dia = request.getParameter("comprobarDia");
	// TODO process result here
	boolean result = port.calculaComparaFecha(fecha, dia);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

       
    </body>
</html>
