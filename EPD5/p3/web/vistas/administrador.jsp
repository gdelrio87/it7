<%-- 
    Document   : administrador
    Created on : 21-mar-2018, 4:34:36
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="DAO">
            <s:textfield name="matricula" label="Matricula"></s:textfield>
            <s:textfield name="modelo" label="Modelo"></s:textfield>
            <s:textfield name="horaEntrada" label="Hora Entrada"></s:textfield>
            <s:textfield name="horaSalida" label="Hora Salida" ></s:textfield>
            <s:textfield name="tiempoPermitido" label="Tiempo Permitido"></s:textfield>
            <s:submit name="enviar" value="Enviar"></s:submit>
        </s:form>
    </body>
</html>
