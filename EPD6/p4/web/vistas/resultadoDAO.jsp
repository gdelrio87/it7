<%-- 
    Document   : resultadoDAO
    Created on : 29-mar-2018, 8:44:36
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
        <s:if test="%{tipoDAO.equals('Insert')}">
            <s:div>
                <s:text name="Registro <b>insertado</b> correctamente"></s:text>
            </s:div>
            <s:div>
                <s:text name="Matricula:<b>%{matricula}</b>"></s:text>
            </s:div>
        </s:if>
        <s:elseif test="%{tipoDAO.equals('Update')}">
            <s:div>
                <s:text name="Registro <b>editado</b> correctamente"></s:text>
            </s:div>
            <s:div>
                <s:text name="Matricula:<b>%{matricula}</b>"></s:text>
            </s:div>
        </s:elseif>
        <s:elseif test="%{tipoDAO.equals('Delete')}">
            <s:div>
                <s:text name="Registro <b>eliminado</b> correctamente"></s:text>
            </s:div>
            <s:div>
                <s:text name="Matricula:<b>%{matricula}</b>"></s:text>
            </s:div>
        </s:elseif>

        <s:form action="cogerDatos" method="POST">
            <s:submit name="volver" value="Volver" />
        </s:form>
    </body>
</html>
