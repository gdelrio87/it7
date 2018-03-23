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
        <s:i18n name="acciones.login" >
            <s:text name="welcome" />
            <s:form action="loginCheck" validate="true">
                <s:textfield key="username" ></s:textfield>
                <s:textfield key="edad"  ></s:textfield>
                <s:textfield key="email"  ></s:textfield>
                <s:submit name="enviar" value="Enviar"></s:submit>
            </s:form>
        </s:i18n>
    </body>
</html>
