<%-- 
    Document   : compra
    Created on : 17-mar-2018, 16:51:26
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LIBROS COMPRADOS:</h1>
        <s:if test="%{#session.carrito.size > 0}">            
            <table border=1 cellspacing=1 cellpadding=2 width="100%" bgcolor="#FFFFFF">
                <tr> 
                    <td><b>Titulo</b></td> 
                    <td><b>Autor</b></td> 
                    <td><b>Precio</b></td> 
                    <td><b>Cantidad</b></td>
                    <td><b>Subtotal</b></td>
                </tr> 
                <s:set var="total" value="0" />
                <s:iterator value="#session.carrito" var="libro" >  
                    <tr>
                        <td> <s:property value="titulo" /> </td>
                        <td> <s:property value="autor" /> </td>
                        <td> <s:property value="precio" /> </td>
                        <td> <s:property value="cantidad" /> </td>  
                        <td> <s:property value="%{cantidad * precio}" /> </td>  <!-- Esto se hace en el cliente --> 
                        <s:set var="total" value="%{#total + cantidad * precio}" />
                    </tr>
                </s:iterator>
                <tr>
                    <td>TOTAL</td><td></td><td></td><td></td><td><s:property value="%{#total}"/></td>
                </tr>
            </table>
        </s:if>
    </body>
</html>
