<%-- 
    Document   : index
    Created on : 13-feb-2018, 11:53:38
    Author     : Grupo 7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("enviar") != null && request.getParameter("nombre") != null && request.getParameter("apellidos") != null && request.getParameter("sexo") != null) {
                response.addCookie(new Cookie("nombre", request.getParameter("nombre")));
                response.addCookie(new Cookie("apellidos", request.getParameter("apellidos")));
                response.addCookie(new Cookie("sexo", request.getParameter("sexo")));
                response.sendRedirect("index.jsp");
            }

            boolean hayCookies = false;
            Cookie galletas[] = request.getCookies();
            if (galletas != null) {
                for (Cookie c : galletas) {
                    if (c.getName().equals("nombre")) {
                        hayCookies = true;
                    }
                }
            }
            if (!hayCookies) {
        %>
        <form method="get" action="index.jsp">
            Nombre: <input type="text" name="nombre" /><br/>
            Apellidos: <input type="text" name="apellidos" /><br/>

            <input type="radio" name="sexo" value="1" >Hombre</input>
            <input type="radio" name="sexo" value="0" >Mujer</input><br/>
            <input type="submit" name="enviar" />
        </form>
        <%
            } else {
                if (galletas != null) {
                    for (Cookie c : galletas) {
                        if (c.getName().equals("sexo") && c.getValue().equals("1")) {
                            response.sendRedirect("hombre.jsp");
                        } else if (c.getName().equals("sexo") && c.getValue().equals("0")) {
                            response.sendRedirect("mujer.jsp");
                        }
                    }
                }
            }
        %>
    </body>
</html>
