<%-- 
    Document   : compra
    Created on : 17-mar-2018, 5:18:44
    Author     : Grupo7 IT
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
        <table border="1" >

            <s:iterator value="#session.carrito" var="libro" >  
                <tr>
                <td> <s:property value="titulo" /> </td>
                <td> <s:property value="autor" /> </td>
                <td> <s:property value="precio" /> </td>
                <td> <s:property value="cantidad" /> </td>  
                <td> <s:property value="cantidad" /> </td>  
                </tr>
            </s:iterator>

        </table>
    </body>
</html>
