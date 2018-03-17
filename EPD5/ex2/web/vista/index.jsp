<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="anyadirLibro">
            <s:select list="libros" listKey="isbn" listValue="%{titulo+' - ' +autor+' - ' +precio+' - '}" name="isbn"/>
            <s:submit type="submit" name="comprado" value="Agregar Libro"></s:submit>
        </s:form>

        <table border="1" >
        
            <s:iterator value="#session.carrito" var="libro" >  
                <tr>
                <td> <s:property value="titulo" /> </td>
                <td> <s:property value="autor" /> </td>
                <td> <s:property value="precio" /> </td>
                <td> <s:property value="cantidad" /> </td>  
                </tr>
            </s:iterator>

        </table>
        
        <s:form action="comprarLibros" >
            <s:submit type="submit" name="comprar" value="Comprar libros" ></s:submit>
        </s:form>
    </body>
</html>
