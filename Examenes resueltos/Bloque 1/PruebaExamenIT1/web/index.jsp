<%-- 
    Document   : index
    Created on : 29-mar-2018, 17:07:13
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page import="java.util.List"%>
<%@page import="profesores.Profesor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Profesor> listadoProfesores = (List<Profesor>) request.getAttribute("listadoProfesores");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Profesores de la Universidad Pablo de Olavide (UPO)</h1>   
        <table border=1 cellspacing=1 cellpadding=2 width="50%" bgcolor="#FFFFFF">
            <caption>Profesores</caption>
            <tr>
                <th>DNI</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Fecha Alta</th>
                <th>Departamento</th>
                <th></th>
                <th></th>
            </tr>

            <%                if (request.getAttribute("listadoNovatos") != null) {
                    List<Profesor> listadoNovatos = (List<Profesor>) request.getAttribute("listadoNovatos");
                    if (listadoNovatos.size() == 0) {
            %>
            <tr>
                <th colspan="5">No hay nuevos profesores</th>
            </tr>
            <%
            } else {
                for (int i = 0; i < listadoNovatos.size(); i++) {
                    Profesor profesor = listadoNovatos.get(i);
            %><tr>
                <td><%= profesor.getDni()%></td>
                <td><%= profesor.getNombre()%></td>
                <td><%= profesor.getApellidos()%></td>
                <td><%= profesor.getFechaAlta()%></td>
                <td><%= profesor.getDepartamento()%></td>
                <td>
                    <form name="editarProfe" action="ProfesoresServlet" method="post">
                        <input type="hidden" name="Accion" value="editar">
                        <input type="submit" name="EditarProfesor" value="Editar">
                    </form>
                </td>
                <td>
                    <form name="eliminarProfe" action="ProfesoresServlet" method="post">
                        <input type="hidden" name="Accion" value="eliminar">
                        <input type="submit" name="EliminarProfesor" value="Eliminar">
                    </form>
                </td>
            </tr><%
                    }
                }
            } else {

                for (int i = 0; i < listadoProfesores.size(); i++) {
                    Profesor profesor = listadoProfesores.get(i);
            %><tr>
                <td><%= profesor.getDni()%></td>
                <td><%= profesor.getNombre()%></td>
                <td><%= profesor.getApellidos()%></td>
                <td><%= profesor.getFechaAlta()%></td>
                <td><%= profesor.getDepartamento()%></td>
                <td>
                    <form name="editarProfe" action="ProfesoresServlet" method="post">
                        <input type="hidden" name="Accion" value="editar">
                        <input type="hidden" name="dniProfe" value="<%= profesor.getDni()%>">
                        <input type="submit" name="EditarProfesor" value="Editar">
                    </form>
                </td>
                <td>
                    <form name="eliminarProfe" action="ProfesoresServlet" method="post">
                        <input type="hidden" name="Accion" value="eliminar">
                        <input type="hidden" name="dniProfe" value="<%= profesor.getDni()%>">
                        <input type="submit" name="eliminarProfesor" value="Eliminar">
                    </form>
                </td>
            </tr><%
                    }
                }
            %>            

        </table>
        <form name="formularioProfes" action="ProfesoresServlet" method="post">
            <input type="hidden" name="Accion" value="listNuevos">
            <input type="submit" name="ListarNuevos" value="Ver solo nuevos profesores">
        </form>
        <form name="formularioProfes" action="ProfesoresServlet" method="post">
            <input type="hidden" name="Accion" value="formAlta">
            <input type="submit" name="Agregar" value="Agregar Nuevo Profesor">
        </form>    
        <hr>
    </body>
</html>
