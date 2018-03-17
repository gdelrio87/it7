<%-- 
    Document   : index
    Created on : 16-mar-2018, 11:21:15
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
        <h1>Tienda Electrónica de Libros</h1>
        <s:form action="AddCarrito">
            <strong>Libros</strong><s:select list="listaLibros" listKey="isbn" listValue="%{titulo+'; ' +autor+'; ' +precio}" name="isbn"/>
            <input type="submit" name="agregar" value="Agregar Libro"/>
        </s:form>

        <hr/>    

        <s:if test="%{#session.carrito.size > 0}">

            <table border=1 cellspacing=1 cellpadding=2 width="100%" bgcolor="#FFFFFF">
                <tr> 
                    <td><b>Titulo</b></td> 
                    <td><b>Autor</b></td> 
                    <td><b>Precio</b></td> 
                    <td><b>Cantidad</b></td>
                    <td><b>Editorial</b></td>
                </tr> 

                <s:iterator value="#session.carrito" var="libro" >  
                    <tr>
                        <td> <s:property value="titulo" /> </td>
                        <td> <s:property value="autor" /> </td>
                        <td> <s:property value="precio" /> </td>
                        <td> <s:property value="cantidad" /> </td>  
                        <td> <s:property value="Editorial.nombre" /> </td>  
                    </tr>
                </s:iterator>

                <s:form action="Comprar">
                    <input type="submit" name="comprar" value="Comprar Libros" />
                </s:form>
            </table>
        </s:if>
    </body>
</html>
