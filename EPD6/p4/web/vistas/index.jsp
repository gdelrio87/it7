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
                <th colspan="2">
                    <form action="vistaAdministrador">
                        <input type="image" src="iconos/insertar.png" style="width: 30%;" />
                        <input type="hidden" name="tipoDAO" value="insert"/>
                    </form>
                </th>
            </tr>
            <s:iterator value="listadoAparcamientos" >
                <tr>
                    <td><s:property value="matricula" /></td>
                    <td><s:property value="modelo" /></td>
                    <td>
                        <s:date name="horaEntrada" format="HH:mm"/>
                    </td>
                    <td>
                        <s:if test="%{horaSalida.toString().equals('00:00:00')}">
                            <s:text name="--"/> 
                        </s:if>                                                    
                        <s:else>                            
                            <s:date name="horaSalida" format="HH:mm"/> 
                        </s:else>
                    </td>
                    <td><s:property value="tiempoPermitido" /></td>
                    <td><form action="vistaUpdate">
                            <input type="image" src="iconos/editar.png" style="width: 30%;" />
                            <input type="hidden" name="matricula" value="<s:property value="matricula"/>"/>
                            <input type="hidden" name="modelo" value="<s:property value="modelo"/>"/>
                            <input type="hidden" name="horaEntrada" value="<s:property value="horaEntrada"/>"/>
                            <input type="hidden" name="horaSalida" value="<s:property value="horaSalida"/>"/>
                            <input type="hidden" name="tiempoPermitido" value="<s:property value="tiempoPermitido"/>"/>
                            <input type="hidden" name="tipoDAO" value="update"/>
                        </form></td>
                    <td><form action="DAOeliminar">
                            <input type="image" src="iconos/eliminar.png" style="width: 30%;" />
                            <input type="hidden" name="matricula" value="<s:property value="matricula"/>"/>
                            <input type="hidden" name="modelo" value="<s:property value="modelo"/>"/>
                            <input type="hidden" name="horaEntrada" value="<s:property value="horaEntrada"/>"/>
                            <input type="hidden" name="horaSalida" value="<s:property value="horaSalida"/>"/>
                            <input type="hidden" name="tiempoPermitido" value="<s:property value="tiempoPermitido"/>"/>
                            <input type="hidden" name="tipoDAO" value="Delete"/>
                        </form></td>
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
            <s:textfield name="matriculaBuscar" label="Buscar por el inicio de la matrícula"></s:textfield>
            <s:submit name="buscarMatricula" value="Buscar"></s:submit>
        </s:form>
    </body>
</html>
