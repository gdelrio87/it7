<%-- 
    Document   : index
    Created on : 11-feb-2018, 18:47:59
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nombre, sedeSocial, telefono;
    String pais, aportacion, banco;
    String socioPpal, aportSocPpal, avalista;
    String capitalExtranjero, aceptar;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 7 - IT - P5</title>
    </head>
    <body>
        <%
            nombre = request.getParameter("nombre");
            sedeSocial = request.getParameter("sedeSocial");
            telefono = request.getParameter("telefono");
            capitalExtranjero = request.getParameter("capitalExtranjero");

            pais = request.getParameter("pais");
            aportacion = request.getParameter("aportacion");
            banco = request.getParameter("banco");

            socioPpal = request.getParameter("socioPpal");
            aportSocPpal = request.getParameter("aportSocPpal");
            avalista = request.getParameter("avalista");

            aceptar = request.getParameter("aceptar");

        %>
        <form method="POST" action="#">
            <table>
                <% if (aceptar == null && capitalExtranjero == null) { %>
                <tr><td>Nombre:</td><td><input type="text" name="nombre"  /></td></tr>
                <tr><td>Sede Social:</td><td><input type="text" name="sedeSocial" /></td></tr>
                <tr><td>Teléfono:</td><td><input type="number" name="telefono" /></td></tr>
                        <%} else {%>
                <tr><td>Nombre:</td><td><input type="text" name="nombre" value="<%= nombre%>"  /></td></tr>
                <tr><td>Sede Social:</td><td><input type="text" name="sedeSocial" value="<%= sedeSocial%>" /></td></tr>
                <tr><td>Tel&eacute;fono:</td><td><input type="number" name="telefono" value="<%= telefono%>" /></td></tr>
                        <% }%>
                <tr><td>Capital Extranjero:</td><td>Si<input type="radio" name="capitalExtranjero" value="si" />
                        No<input type="radio" name="capitalExtranjero" value="no" /></td></tr>
                        <%
                            if (capitalExtranjero != null) {
                                if (capitalExtranjero.equals("si")) {
                                    out.write("<tr><td>Pa&iacute;s:</td><td><input type=\"text\" name=\"pais\" /></td></tr>");
                                    out.write("<tr><td>Aportaci&oacute;n en %:</td><td><input type=\"number\" name=\"aportacion\" /></td></tr>");
                                    out.write("<tr><td>Banco en el extranjero:</td><td><input type=\"text\" name=\"banco\" /></td></tr>");
                                } else if (capitalExtranjero.equals("no")) {
                                    out.write("<tr><td>Socio principal:</td><td><input type=\"text\" name=\"socioPpal\" /></td></tr>");
                                    out.write("<tr><td>Aportaci&oacute;n socio principal:</td><td><input type=\"number\" name=\"aportSocPpal\" /></td></tr>");
                                    out.write("<tr><td>Avalista:</td><td><input type=\"text\" name=\"avalista\" /></td></tr>");
                                }
                            }
                        %>
                <tr><td><input type="submit" name="aceptar" value="Aceptar" /></td></tr>
            </table>
        </form>

        <% if (aceptar != null && capitalExtranjero == null && nombre != "" && sedeSocial != "" && telefono != "") {

                if (pais != null && pais != "" && aportacion != null && aportacion != "" && banco != null && banco != "") {%>
        <table border="1">
            <tr><td>Nombre</td><td><%= nombre%></td></tr>
            <tr><td>Sede Social</td><td><%= sedeSocial%></td></tr>
            <tr><td>Tel&eacute;fono:</td><td><%= telefono%></td></tr>
        </table>
        <table border="1">
            <tr><td>Pa&iacute;s</td><td><%= nombre%></td></tr>
            <tr><td>Aportaci&oacute;n en %</td><td><%= sedeSocial%></td></tr>
            <tr><td>Banco en el extranjero</td><td><%= telefono%></td></tr>
        </table>
        <% } else if (socioPpal != null && socioPpal != "" && aportSocPpal != null && aportSocPpal != "" && avalista != null && avalista != "") {%>
        <table border="1">
            <tr><td>Nombre</td><td><%= nombre%></td></tr>
            <tr><td>Sede Social</td><td><%= sedeSocial%></td></tr>
            <tr><td>Tel&eacute;fono:</td><td><%= telefono%></td></tr>
        </table>
        <table border="1">
            <tr><td>Socio principal</td><td><%= socioPpal%></td></tr>
            <tr><td>Aportaci&oacute;n socio principal</td><td><%= aportSocPpal%></td></tr>
            <tr><td>Avalista:</td><td><%= avalista%></td></tr>
        </table>
        <%}
            }%>

    </body>
</html>
