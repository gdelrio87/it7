<%-- 
    Document   : index
    Created on : 09-feb-2018, 18:43:18
    Author     : Grupo7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! int r, a1, a2, num;
    String cadena = "1", diferencia = "0", numeros = "|1";%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ej2-EPD1-Grupo7</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            table {
                border-collapse: collapse;
                text-align: left;
            }
        </style>
    </head>
    <body>
        <%  r = 2;
            a1 = 1;
            a2 = a1 * r;
            num = 1;

            while (r < 6) {
                //if (r == 2) {
        %>
        <p>Razón = <%=r%></p>
        <table>       
            <tr><th>Valores</th><th>Diferencia</th></tr>
            <tr><td>1</td><td>0</td></tr>
            <%  while (a2 < 100) {%>

            <tr><td><%= a2%></td><td><%= a2 - a1%></td></tr>
            <%
                    cadena += "," + a2;
                    diferencia += "," + (a2 - a1);
                    numeros += "|" + (++num);
                    a1 = a2;
                    a2 = a1 * r;

                }%>
        </table>
        <img src="https://chart.googleapis.com/chart?cht=lc&amp;chs=250x250&amp;chd=t:<% out.write(cadena); %>|<% out.write(diferencia);%>&amp;chco=0000FF,FF0000&amp;chdl=Valores|Diferencia&amp;chxt=x,y&amp;chxl=0:<% out.write(numeros);%>&amp;"/>
        <%   a1 = 1;
                    a2 = a1 * r;
                    num = 1;
                    cadena = "1";
                    diferencia = "0";
                    numeros = "|1";
                    r++;
                //}
            }%>
    </body>
</html>
