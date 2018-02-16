<%-- 
    Document   : idioma
    Created on : 16-feb-2018, 11:53:41
    Author     : Grupo 7 IT
--%>

<%
    if (!request.getHeader("Accept-Language").contains("en")) {
        out.write("Su navegador no soporta el idioma inglés");
    }
%>
