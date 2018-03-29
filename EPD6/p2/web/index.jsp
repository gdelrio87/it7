<%-- 
    Document   : index
    Created on : 26-mar-2018, 17:58:32
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
        <s:form action="formulario" method="POST" >
            <s:textfield key="nombre" ></s:textfield>
            <s:textfield key="edad" ></s:textfield>
            <s:textfield key="fecha"></s:textfield>
            <s:textfield key="e_mail" ></s:textfield>
            <s:textfield key="page" ></s:textfield>
            <s:textfield key="hora_laboral" ></s:textfield>
            <s:textfield key="telefono" ></s:textfield>
            <s:textfield key="experiencia" ></s:textfield>
            <s:textfield key="ingresos" ></s:textfield>
            <s:textfield key="retencion"></s:textfield>
            <s:textfield key="neto" ></s:textfield>
            <s:submit key="enviar" value="Enviar" ></s:submit>
        </s:form>

    </body>
</html>
