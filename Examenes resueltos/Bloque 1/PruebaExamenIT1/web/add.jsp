<%-- 
    Document   : add
    Created on : 29-mar-2018, 20:53:57
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page import="profesores.Profesor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Añadir Nuevo Profesor</h1>

        <h2><font color='red'></font></h2>
            <%
                if (request.getAttribute("accion") == null) {
            %>
        <form name="formularioProfes" action="ProfesoresServlet" method="post"> 

            <table cellspacing=1 cellpadding=2 bgcolor="#FFFFFF">
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="dni"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos"/></td>
                </tr>
                <tr>
                    <td>Fecha de Alta <br>(día/mes/año)</td>
                    <td>
                        <input type="text" name="diaAlta" size="2" maxlength="2"/> /
                        <input type="text" name="mesAlta" size="2" maxlength="2"/> /
                        <input type="text" name="anioAlta" size="4" maxlength="4"/>
                    </td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td>
                        <select name="departamento">
                            <option value="informatica">Informática</option>
                            <option value="deporte">Deporte</option>
                            <option value="lade">LADE</option>
                            <option value="biotecnologia">Biotecnología</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="Accion" value="altaProfesor">
                        <input type="submit" name="Alta" value="Alta Nuevo Profesor">

                    </td>
                </tr>
            </table>
        </form>
        <form name="formularioProfes" action="ProfesoresServlet" method="post"> 
            <input type="hidden" name="Accion" value="cancelarAlta">
            <input type="submit" name="Cancelar" value="Cancelar Alta Nuevo Profesor">
        </form>
        <%
        } else {
        Profesor p = (Profesor)request.getAttribute("profesor");
        String nombre = p.getNombre();
        String apellidos = p.getApellidos();
        String dni = p.getDni();
        %>
        <form name="formularioProfes" action="ProfesoresServlet" method="post"> 

            <table cellspacing=1 cellpadding=2 bgcolor="#FFFFFF">                
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="<%=nombre%>"/></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%=apellidos%>"/></td>
                </tr>                
                <tr>
                    <td>Departamento</td>
                    <td>
                        <select name="departamento">
                            <option value="informatica">Informática</option>
                            <option value="deporte">Deporte</option>
                            <option value="lade">LADE</option>
                            <option value="biotecnologia">Biotecnología</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="Accion" value="editarProfe">
                        <input type="hidden" name="dni" value="<%=dni%>">
                        <input type="submit" name="Editar" value="Editar Profesor">
                    </td>
                </tr>
            </table>
        </form>        
        <%
            }
        %>
    </body>
</html>
