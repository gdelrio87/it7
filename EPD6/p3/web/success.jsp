<%-- 
    Document   : success
    Created on : 27-mar-2018, 18:38:23
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
        <table>
            <tr><td>Nombre:</td><td><s:property value="nombre"></s:property></td></tr>
            <tr><td>Edad:</td><td><s:property value="edad"></s:property></td></tr>
            <tr><td>Fecha:</td><td><s:property value="fecha"></s:property></td></tr>
            <tr><td>E-mail:</td><td><s:property value="e_mail"></s:property></td></tr>
            <tr><td>Página(url):</td><td><s:property value="page"></s:property></td></tr>
            <tr><td>Horas laborables:</td><td><s:property value="hora_laboral"></s:property></td></tr>
            <tr><td>Teléfono:</td><td><s:property value="telefono"></s:property></td></tr>
            <tr><td>Experiencia:</td><td><s:property value="experiencia"></s:property></td></tr>
            <tr><td>Ingresos:</td><td><s:property value="ingresos"></s:property></td></tr>
            <tr><td>Retencion Salarial (%):</td><td><s:property value="retencion"></s:property></td></tr>
            <tr><td>Neto:</td><td><s:property value="neto"></s:property>
       </table>
    </body>
</html>
