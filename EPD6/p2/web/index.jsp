<%-- 
    Document   : index
    Created on : 26-mar-2018, 17:58:32
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <s:head />
    </head>
    <body>
        <s:form action="formulario" validate="true" method="POST" >
            <s:textfield name="nombre" label="Nombre"></s:textfield>
            <s:textfield name="edad" label="Edad"></s:textfield>
            <s:textfield name="fecha" label="Fecha Nacimiento"></s:textfield>
            <s:textfield name="e_mail" label="Email"></s:textfield>
            <s:textfield name="page" label="URL"></s:textfield>
            <s:textfield name="ingresos" label="Ingresos deseados"></s:textfield>
            <s:submit name="enviar" value="Enviar" ></s:submit>
        </s:form>
    </body>
</html>
