<%-- 
    Document   : hombre
    Created on : 13-feb-2018, 11:55:12
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
            Cookie galletas[] = request.getCookies();
            boolean hayCookies = false;
            for (Cookie c : galletas) {
                if (c.getName().equals("nombre") || c.getName().equals("apellidos") || c.getName().equals("sexo")) {
                    hayCookies = true;
                }
            }

            if (request.getParameter("logout") != null) {
                for (Cookie c : galletas) {
                    if (c.getName().equals("nombre")) {
                        c.setMaxAge(0);
                        response.addCookie(c);
                    }

                    if (c.getName().equals("apellidos")) {
                        c.setMaxAge(0);
                        response.addCookie(c);
                    }

                    if (c.getName().equals("sexo")) {
                        c.setMaxAge(0);
                        response.addCookie(c);
                    }
                }
                response.sendRedirect("index.jsp");
            }

            if (hayCookies) {
        %>                
        <h1>Bienvenido</h1>
        <%  for (Cookie c : galletas) {
                if (c.getName().equals("nombre") || c.getName().equals("apellidos") || c.getName().equals("sexo")) {
                    if (c.getName().equals("sexo")) {
                        out.print(c.getName() + ":Hombre<br/>");
                    } else {
                        out.print(c.getName() + ":" + c.getValue() + "<br/>");
                    }
                }
            }
        %>        
        <form action="hombre.jsp" method="get">
            <input type="submit" name="logout" value="Deslogarse"/>
        </form>
        <%
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
