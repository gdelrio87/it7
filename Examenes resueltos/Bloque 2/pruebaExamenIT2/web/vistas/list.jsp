<%-- 
    Document   : list
    Created on : 21-abr-2018, 19:30:05
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva de las Guardas. System Manager</title>
    </head>
    <body>
        <h1>Reserva de las Guardas. System Manager</h1>
        <form id="filtro" name="filtro" action="listadoFiltro" method="post">
            <table class="wwFormTable">
                <table >
                    <tr>               
                        <td>
                    <tr>
              
                        <s:select list="listaTipoAnimales" name="animal" label="Animal" listValue="animal" listKey="animal"></s:select>
                   
                    </tr>


                    </td>
                    </tr>
                    <tr>
                        <td>
                    <tr>
                        <td colspan="2"><div align="right"><input type="submit" id="filtro_0" value="Filter by animal"/>
                            </div></td>
                    </tr>


                    </td>
                    </tr>                
                </table>
            </table></form>




        <form id="listado" name="listado" action="listado" method="post">
            <table class="wwFormTable">
                <table >            
                    <td>
                    <tr>
                        <td colspan="2"><div align="right"><input type="submit" id="listado_0" value="Remove filter"/>
                            </div></td>
                    </tr>


                    </td>
                    </tr>                
                </table>
            </table></form>





        <table border=1 cellspacing=1 cellpadding=2 width="100%" bgcolor="#FFFFFF">
            <tr>
                <td><b>Identificador</b></td>
                <td><b>Tipo Animal</b></td>
                <td><b>Pais</b></td>
                <td><b>Precio</b></td>
                <td><b>Email</b></td>
                <td>
                    <form id="formulario" name="formulario" action="Add" method="post">
                        <table class="wwFormTable">
                            <tr>
                                <td colspan="2"><div align="right"><input type="submit" id="formulario_0" value="Add"/>
                                    </div></td>
                            </tr>
                        </table></form>
                </td>
            </tr>



            <s:iterator value="listaAnimales">
                <tr>
                    <%-- <td colspan="6"><b>No animals in the sanctuary</b></td> --%>
                    <td><s:property value="identificador"></s:property></td>
                <td><s:property value="tipoAnimal"></s:property></td>
                <td><s:property value="pais"></s:property></td>
                <td><s:property value="precio"></s:property></td>
                <td><s:property value="email"></s:property></td>
                <td><s:form  action="listadoBorrar" method="POST" >
                        <input type="hidden" name="id" value="<s:property value="id"></s:property>" />
                        <s:submit name="borrar" value="Borrar"> </s:submit>
                </s:form></td>
                </tr>
            </s:iterator>

        </table>
    </body>
</html>


