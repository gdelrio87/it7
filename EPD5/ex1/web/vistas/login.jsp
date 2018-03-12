<%-- 
    Document   : login
    Created on : 12-mar-2018, 18:27:08
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EPD5-EX1</title>
    </head>
    <body>
        
        <s:form action="loginCheck">
            <s:textfield name="username" label="User" ></s:textfield>
            <s:password name="password" label="Password"></s:password>
            <s:submit value="login" ></s:submit>
        </s:form>
    </body>
</html>
