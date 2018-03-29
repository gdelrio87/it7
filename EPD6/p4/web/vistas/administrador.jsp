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
        <s:head />
    </head>
    <body>

        <s:if test="%{tipoDAO.equals('insert')}" >
            <s:form action="DAOinsertar" validate="true" >
                <s:textfield key="matricula" ></s:textfield>
                <s:textfield key="modelo" ></s:textfield>
                <s:textfield key="horaEntrada" ></s:textfield>
                <s:textfield key="horaSalida" ></s:textfield>
                <s:textfield key="tiempoPermitido" ></s:textfield>
                <s:submit name="tipoDAO" value="Insert"></s:submit>
            </s:form>
        </s:if>
        <s:elseif test="%{tipoDAO.equals('update')}">
            <s:form action="DAOeditar" validate="true" >
                <s:textfield key="matricula"  ></s:textfield>
                <s:textfield key="modelo" ></s:textfield>
                <s:textfield key="horaEntrada" ></s:textfield>
                <s:textfield key="horaSalida" ></s:textfield>
                <s:textfield key="tiempoPermitido" ></s:textfield>
                <input type="hidden" name="matriculaOriginal" value="<s:property value="matricula"/>" />
                <s:submit name="tipoDAO" value="Update"></s:submit>
            </s:form>
        </s:elseif>
        <s:form action="cogerDatos">
            <s:submit name="todos" value="Volver"></s:submit>
        </s:form>
    </body>
</html>
