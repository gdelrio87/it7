<%-- 
    Document   : index
    Created on : 09-feb-2018, 18:43:18
    Author     : Grupo7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! int r, a1, a2, num;
    String valores, diferencia, numeros;%>
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
                float:left;
                margin-right: 10%;
            }
            div{
                border:2px solid grey;
                padding-left: 5%;
                width: 50%;
                margin-bottom: 2%;
            }
        </style>
    </head>
    <body>
        <%
            //inicializamos las variables declaradas.
            r = 2;

            //mientras la razón sea menor a 6
            while (r < 6) {
                //inicializamos las variables para que se usen al principio del while
                a1 = 1;
                a2 = a1 * r;
                num = 1;
                valores = "1";
                diferencia = "0";
                numeros = "|1";

                //si la razón es distinta de 4
                if (r != 4) {
        %>
        <div>
            <p>Razón = <%=r%></p>
            <table>       
                <tr><th>Valores</th><th>Diferencia</th></tr>
                <tr><td>1</td><td>0</td></tr>
                <%  while (a2 < 100) {%>

                <tr><td><%= a2%></td><td><%= a2 - a1%></td></tr>
                <%
                    //almacenamos los valores en un string con el formato requerido en la imagen
                        valores += "," + a2;
                        diferencia += "," + (a2 - a1);
                        numeros += "|" + (++num);
                        a1 = a2;
                        a2 = a1 * r;

                    }%>
            </table>
            <p>
                <img src="https://chart.googleapis.com/chart?cht=lc&amp;chs=400x250&amp;chd=t:<% out.write(valores); %>|<% out.write(diferencia);%>&amp;chco=0000FF,FF0000&amp;chdl=Valores|Diferencia&amp;chxt=x,y&amp;chxl=0:<% out.write(numeros);%>&amp;"/>
            </p>
        </div>
        <%
                }
                //aumentamos en 1 el valor de la razón
                r++;
            }%>
    </body>
</html>
