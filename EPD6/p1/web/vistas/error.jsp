<%-- 
    Document   : error
    Created on : 06-abr-2018, 12:08:13
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>No se puede introducir el mismo ISBN que otro libro</h1>
        <s:form action="VistaAgregar">
            <s:submit name="agregarNuevo" value="Nuevo libro" />
        </s:form>
    </body>
</html>
