<%-- 
    Document   : index
    Created on : 22-mar-2018, 5:29:06
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <s:head />
    </head>
    <body>
        <s:form action="formulario" validate="true">
            <s:textfield name="usuario" label="usuario"  />
            <s:textfield name="edad" label="Edad" />
            <s:textfield name="correo" label="E-mail" />
            <s:submit name="enviar" value="Enviar" />
        </s:form>
    </body>
</html>
