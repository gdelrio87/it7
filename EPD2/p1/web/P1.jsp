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
                <%@include file="radioMuestra1.jsp" %>
            </p>
            <p>
                <%@include file="noticia2.txt" %>
                </br>
                <%@include file="radioMuestra2.jsp" %>
            </p>
            <p>
                <%@include file="noticia3.txt" %>
                </br>
                <%@include file="radioMuestra3.jsp" %>
            </p>
            <input type="submit" name="enviar" />
        </form>
        <%
        } else {
        %>
        <form method="get" action="P1.jsp">
            <p>
                <% if (request.getParameter("muestra1") != null) {
                        if (request.getParameter("muestra1").equals("0")) {
                            out.write("información no mostrada");
                        } else {
                %>
                <%@include file="noticia1.txt" %>
                <%
                        }
                    } else {
                        out.write("Debe seleccionar una opci&oacute;n obligatoriamente");
                    }
                %>
                </br>
                <%@include file="radioMuestra1.jsp" %>
            </p>
            <p>
            <p>
                <% if (request.getParameter("muestra2") != null) {
                        if (request.getParameter("muestra2").equals("0")) {
                            out.write("información no mostrada");
                        } else {
                %>
                <%@include file="noticia2.txt" %>
                <%
                        }
                    } else {
                        out.write("Debe seleccionar una opci&oacute;n obligatoriamente");
                    }
                %>
                </br>
                <%@include file="radioMuestra2.jsp" %>
            </p>
        </p>
        <p>
        <p>
            <% if (request.getParameter("muestra3") != null) {
                    if (request.getParameter("muestra3").equals("0")) {
                        out.write("información no mostrada");
                    } else {
            %>
            <%@include file="noticia3.txt" %>
            <%
                    }
                } else {
                    out.write("Debe seleccionar una opci&oacute;n obligatoriamente");
                }
            %>
            </br>
            <%@include file="radioMuestra3.jsp" %>
        </p>
    </p>
    <input type="submit" name="enviar" />
</form>
<%            }
%>


</body>
</html>
