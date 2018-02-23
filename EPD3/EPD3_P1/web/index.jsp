<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:45:47
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String[][] arrayCoches = new String[4][5];

            arrayCoches[0][0] = "12784HIH";
            arrayCoches[0][1] = "BMW";
            arrayCoches[0][2] = "10:05";
            arrayCoches[0][3] = "--";
            arrayCoches[0][4] = "30";

            arrayCoches[1][0] = "76234AAC";
            arrayCoches[1][1] = "Toyota";
            arrayCoches[1][2] = "10:07";
            arrayCoches[1][3] = "10:35";
            arrayCoches[1][4] = "30";

            arrayCoches[2][0] = "32162BAQ";
            arrayCoches[2][1] = "Audi";
            arrayCoches[2][2] = "10:45";
            arrayCoches[2][3] = "--";
            arrayCoches[2][4] = "90";

            arrayCoches[3][0] = "87823CDA";
            arrayCoches[3][1] = "Mercedes";
            arrayCoches[3][2] = "10:46";
            arrayCoches[3][3] = "11:05";
            arrayCoches[3][4] = "15";
        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        for (int i = 0; i < arrayCoches.length; i++) {
                    %>
            <tr>
                <%
                    for (int j = 0; j < arrayCoches[0].length; j++) {
                %>

                <td><%= arrayCoches[i][j]%></td>


                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
