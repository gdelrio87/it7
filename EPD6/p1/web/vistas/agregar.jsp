<%-- 
    Document   : agregar
    Created on : 21-mar-2018, 11:17:53
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <s:head />
    </head>
    <body>
        <s:form action="nuevoLibro">
            <s:textfield name="autor" label="Autor" />
            <s:textfield name="titulo" label="Titulo" />
            <s:textfield name="precio" label="Precio" />
            <s:textfield name="isbn" label="Isbn" />
            <s:select label="Editorial" name="editorial" list="#session.editoriales" listKey="id" listValue="nombre" /> 
            <s:submit name="agregar" value="Agregar"/>
        </s:form>
    </body>
</html>
