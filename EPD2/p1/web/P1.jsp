<%-- 
    Document   : P1
    Created on : 13-feb-2018, 11:12:05
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Problema 1</title>
    </head>
    <body>
        <%
            if (request.getParameter("enviar") == null) {
        %>
        <form method="get" action="P1.jsp">
            <p>
                <%@include file="noticia1.txt" %>
                </br>
                <input type="radio" name="muestra1" value="1" >Muestra</input>
                <input type="radio" name="muestra1" value="0" >Oculta</input>
            </p>
            <p>
                <%@include file="noticia2.txt" %>
                </br>
                <input type="radio" name="muestra2" value="1" >Muestra</input>
                <input type="radio" name="muestra2" value="0" >Oculta</input>
            </p>
            <p>
                <%@include file="noticia3.txt" %>
                </br>
                <input type="radio" name="muestra3" value="1" >Muestra</input>
                <input type="radio" name="muestra3" value="0" >Oculta</input>
            </p>
            <input type="submit" name="enviar" />
        </form>
        <%
        } else {
        %>
        <form method="get" action="P1.jsp">
            <p>
                <%
                    if (request.getParameter("muestra1").equals("0")) {
                        out.write("información no mostrada");
                    } else {
                %>
                <%@include file="noticia1.txt" %>
                <%
                    }
                %>
                </br>
                <input type="radio" name="muestra1" value="1" >Muestra</input>
                <input type="radio" name="muestra1" value="0" >Oculta</input>
            </p>
            <p>
            <p>
                <%
                    if (request.getParameter("muestra2").equals("0")) {
                        out.write("información no mostrada");
                    } else {
                %>
                <%@include file="noticia2.txt" %>
                <%
                    }
                %>
                </br>
                <input type="radio" name="muestra2" value="1" >Muestra</input>
                <input type="radio" name="muestra2" value="0" >Oculta</input>
            </p>
        </p>
        <p>
        <p>
            <%
                if (request.getParameter("muestra3").equals("0")) {
                    out.write("información no mostrada");
                } else {
            %>
            <%@include file="noticia3.txt" %>
            <%
                }
            %>
            </br>
            <input type="radio" name="muestra3" value="1" >Muestra</input>
            <input type="radio" name="muestra3" value="0" >Oculta</input>
        </p>
    </p>
    <input type="submit" name="enviar" />
</form>
<%            }
%>


</body>
</html>
