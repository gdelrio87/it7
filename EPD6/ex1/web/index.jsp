<%-- 
    Document   : index
    Created on : 19-mar-2018, 18:20:24
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
        <s:form action="loginCheck">
            <s:textfield name="username" label="User Name" ></s:textfield>
            <s:textfield name="edad" label="Edad" ></s:textfield>
            <s:textfield name="email" label="Email" ></s:textfield>
            <s:submit name="enviar" value="Enviar"></s:submit>
        </s:form>
    </body>
</html>
