<%-- 
    Document   : index
    Created on : 19-mar-2018, 13:39:04
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

        <table border="1">
            <tr>
                <th>Matricula</th>
                <th>Modelo</th>
                <th>Hora entrada</th>
                <th>Hora salida</th>
                <th>Tiempo Permitido</th>
            </tr>
            <s:iterator value="listadoAparcamientos" >
                <tr>
                    <td><s:property value="matricula" /></td>
                    <td><s:property value="modelo" /></td>
                    <td>
                        <s:date name="horaEntrada" format="HH:mm"/>
                    </td>
                    <td>
                        <s:if test="%{horaSalida == null}">
                            <s:text name="--"/> 
                        </s:if>                                                    
                        <s:else>                            
                            <s:date name="horaSalida" format="HH:mm"/> 
                        </s:else>
                    </td>
                    <td><s:property value="tiempoPermitido" /></td>
                </tr>
            </s:iterator>
        </table>
        <s:form action="buscarCorrectos">
            <s:submit name="cochesCorrectos" value="Coches Correctos"></s:submit>
        </s:form>
        <s:form action="buscarExcedidos">
            <s:submit name="cochesExcedidos" value="Coches Excedidos"></s:submit>
        </s:form>
        <s:form action="buscarAparcados">
            <s:submit name="cochesAparcados" value="Coches Aparcados"></s:submit>
        </s:form>
        <s:form action="cogerDatos">
            <s:submit name="todos" value="Todos los coches"></s:submit>
        </s:form>
        <s:form action="buscarMatricula">
            <s:textfield name="matricula" label="Buscar por el inicio de la matrícula"></s:textfield>
            <s:submit name="buscarMatricula" value="Buscar"></s:submit>
        </s:form>
    </body>
</html>
