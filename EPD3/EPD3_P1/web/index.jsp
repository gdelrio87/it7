<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:45:47
    Author     : Grupo 7 IT 
--%>

<%@page import="java.sql.Time"%>
<%@page import="java.util.ArrayList"%>
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
            List aparcamiento = new ArrayList<>();

            List coche1 = new ArrayList<>();
            coche1.add("12784HIH");
            coche1.add("BMW");
            coche1.add(new Time(10, 05, 0));
            coche1.add(null);
            coche1.add(30);

            aparcamiento.add(coche1);

            List coche2 = new ArrayList<>();
            coche2.add("32162BAQ");
            coche2.add("Toyota");
            coche2.add(new Time(10, 07, 0));
            coche2.add(new Time(10, 35, 0));
            coche2.add(30);

            aparcamiento.add(coche2);

            List coche3 = new ArrayList<>();
            coche3.add("32162BAQ");
            coche3.add("Audi");
            coche3.add(new Time(10, 45, 0));
            coche3.add(null);
            coche3.add(90);

            aparcamiento.add(coche3);

            List coche4 = new ArrayList<>();
            coche4.add("87823CDA");
            coche4.add("Mercedes");
            coche4.add(new Time(10, 46, 0));
            coche4.add(new Time(11, 05, 0));
            coche4.add(15);

            aparcamiento.add(coche4);

        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%  for (int i = 0; i < aparcamiento.size(); i++) {
                     
                    List coche = (List) aparcamiento.get(i);
                    %>
            <tr>
                <%  for (int j = 0; j < coche.size(); j++) {
                %>

                <td><%= coche.get(j)%></td>


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
