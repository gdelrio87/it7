<%-- 
    Document   : P2
    Created on : 07-feb-2018, 18:30:01

    Author     : Grupo7 IT

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nombre, apellidos, email, estudios, bloques, nota, cadenaErrores;
    double bloque1, bloque2, bloque3, proyecto, epd, notaSobre7, notaSobre10, notaSobre2, notaSobre1, notaFinal, valorBloque1, valorBloque2, valorBloque3;
    boolean errores;

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EPD 1 Problema 2</title>
    </head>
    <body>
        <form method="get" action="P2.jsp">
            Nombre: <input type="text" name="nombre" /><br/>
            Apellidos: <input type="text" name="apellidos" /><br/>
            Email: <input type="text" name="email" /><br/>
            Ha estudiado antes IT ?: <input type="radio" name="estudio" value="1"><input type="radio" name="estudio" value="0"/><br/>
            En caso afirmativo, indicar el o los bloques que encontró más difíciles: <input type="text" name="bloques" /><br/>
            En caso negativo, indicar qué nota espera obtener en la asignatura: <input type="text" name="nota" /><br/>
            <!-- Ampliacion para el problema 2 -->
            Nota que espera obtener en el examen del bloque 1 (sobre 10): <input type="text" name="bloque1" /><br/>
            Nota que espera obtener en el examen del bloque 2 (sobre 10): <input type="text" name="bloque2" /><br/>
            Nota que espera obtener en el examen del bloque 3 (sobre 10): <input type="text" name="bloque3" /><br/>
            Nota que espera obtener en el proyecto (sobre 10): <input type="text" name="proyecto" /><br/>
            Nota que espera obtener en los ejercicios de EPD (sobre 10): <input type="text" name="epd" /><br/>
            <input type="submit" name="enviar"/>
        </form>
        <%
            if (request.getParameter("enviar") != null && !request.getParameter("bloque1").equals("") && !request.getParameter("bloque2").equals("") && !request.getParameter("bloque3").equals("") && !request.getParameter("proyecto").equals("") && !request.getParameter("epd").equals("")) {

                valorBloque1 = 0.3111;
                valorBloque2 = 0.1556;
                valorBloque3 = 0.2333;

                nombre = request.getParameter("nombre");
                apellidos = request.getParameter("apellidos");
                email = request.getParameter("email");
                estudios = request.getParameter("estudio");
                bloques = request.getParameter("bloques");
                nota = request.getParameter("nota");

                if (request.getParameter("bloque1") != null && request.getParameter("bloque2") != null && request.getParameter("bloque3") != null && request.getParameter("proyecto") != null && request.getParameter("epd") != null) {

                    try {
                        bloque1 = Double.parseDouble(request.getParameter("bloque1"));

                    } catch (NumberFormatException nfe) {
                        errores = true;
                        cadenaErrores += "El campo bloque1 debe ser numerico.<br>";
                    }

                    try {
                        bloque2 = Double.parseDouble(request.getParameter("bloque2"));

                    } catch (NumberFormatException nfe) {
                        errores = true;
                        cadenaErrores += "El campo bloque2 debe ser numerico.<br>";
                    }

                    try {
                        bloque3 = Double.parseDouble(request.getParameter("bloque3"));

                    } catch (NumberFormatException nfe) {
                        errores = true;
                        cadenaErrores += "El campo bloque3 debe ser numerico.<br>";
                    }

                    try {
                        proyecto = Double.parseDouble(request.getParameter("proyecto"));

                    } catch (NumberFormatException nfe) {
                        errores = true;
                        cadenaErrores += "El campo proyecto debe ser numerico.<br>";
                    }

                    try {
                        epd = Double.parseDouble(request.getParameter("epd"));

                    } catch (NumberFormatException nfe) {
                        errores = true;
                        cadenaErrores += "El campo epd debe ser numerico.<br>";
                    }

                }

                if (errores) {
                    out.write(cadenaErrores);
                } else {

                    if (!nombre.equals("") && nombre != null) {
                        out.print("Nombre: " + nombre + "<br/>");
                    }

                    if (!apellidos.equals("") && apellidos != null) {
                        out.print("Apellidos: " + apellidos + "<br/>");
                    }

                    if (!email.equals("") && email != null) {
                        out.print("Email: " + email + "<br/>");
                    }

                    if (!estudios.equals("") && estudios != null) {
                        if (Integer.parseInt(estudios) == 1) {
                            out.print("Bloques que le resulto dificil: " + bloques);
                        } else {
                            out.print("Nota esperada: " + nota);
                        }
                    }

                    //Ampliacion para el problema 2
                    notaSobre7 = (bloque1 * valorBloque1) + (bloque2 * valorBloque2) + (bloque3 * valorBloque3);
                    notaSobre7 = Math.rint(notaSobre7 * 1000) / 1000;
                    notaSobre10 = (notaSobre7 * 10) / 7;
                    notaSobre10 = Math.rint(notaSobre10 * 1000) / 1000;
                    notaSobre2 = (proyecto * 2) / 10;
                    notaSobre1 = epd / 10;
        %>

        <table border="1">
            <tr><th></th><th style="background-color: gray"><b>Rendimiento individual</b></th><th colspan="2" style="background-color: gray"><b>Rendimiento Grupal</b></th><th rowspan="5" style="background-color: gray"><b>Nota Final</b></th></tr>
            <tr><td><b>Bloques</b></td><td><b>Pruebas EPD (sobre 10)</b></td><td><b>Proyecto (sobre 10)</b></td><td><b>Ejercicios EPD (sobre 10)</b></td></tr>
            <tr><td><b>B1</b></td><td><%= bloque1%></td><td rowspan="3"><%= proyecto%></td><td rowspan="3"><%= epd%></td></tr>
            <tr><td><b>B2</b></td><td><%= bloque2%></td></tr>
            <tr><td><b>B3</b></td><td><%= bloque3%></td></tr>
            <tr><td></td><td style="background-color: gray"><b>Nota total sobre 7</b></td><td style="background-color: gray"><b>Nota total sobre 2</b></td><td style="background-color: gray"><b>Nota total sobre 1</b></td>
                <td>
                    <% if (notaSobre10 < 5) {
                            notaFinal = notaSobre10;
                    %>
                    <%= notaFinal%>
                    <%
                    } else {
                        notaFinal = notaSobre7 + notaSobre2 + notaSobre1;
                        notaFinal = Math.rint(notaFinal * 1000) / 1000;
                    %>
                    <%= notaFinal%>
                    <%
                        }
                    %>
                </td></tr>
            <tr><td></td><td><%= notaSobre7%></td><td><%= notaSobre2%></td><td><%= notaSobre1%></td></tr>
            <tr><td></td><td style="background-color: gray"><b>Nota total sobre 10</b></td></tr>
            <tr><td></td><td><%= notaSobre10%></td></tr>
        </table>
        <%
                }
            }
        %>
    </body>
</html>
