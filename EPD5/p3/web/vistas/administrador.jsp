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

        <s:if test="%{tipoDAO.equals('insert')}" >
            <s:form action="DAOinsertar">
                <s:textfield name="matricula" label="Matricula" ></s:textfield>
                <s:textfield name="modelo" label="Modelo"></s:textfield>
                <s:textfield name="horaEntrada" label="Hora Entrada (HH:mm:ss)"></s:textfield>
                <s:textfield name="horaSalida" label="Hora Salida (HH:mm:ss)" ></s:textfield>
                <s:textfield name="tiempoPermitido" label="Tiempo Permitido"></s:textfield>
                <s:submit name="enviar" value="Insert"></s:submit>
            </s:form>
        </s:if>
        <s:elseif test="%{tipoDAO.equals('update')}">
            <s:form action="DAOeditar">
                <s:textfield name="matricula" label="Matricula" ></s:textfield>
                <s:textfield name="modelo" label="Modelo"></s:textfield>
                <s:textfield name="horaEntrada" label="Hora Entrada (HH:mm:ss)"></s:textfield>
                <s:textfield name="horaSalida" label="Hora Salida (HH:mm:ss)" ></s:textfield>
                <s:textfield name="tiempoPermitido" label="Tiempo Permitido"></s:textfield>
                <input type="hidden" name="matriculaOriginal" value="<s:property value="matricula"/>" />
                <s:submit name="enviar" value="Update"></s:submit>
            </s:form>
        </s:elseif>
        <s:form action="cogerDatos">
            <s:submit name="todos" value="Volver"></s:submit>
        </s:form>
    </body>
</html>
