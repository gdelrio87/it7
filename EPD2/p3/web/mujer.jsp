<%-- 
    Document   : mujer
    Created on : 13-feb-2018, 11:55:27
    Author     : Antonio Jose Herrera Tabaco 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenida</h1>
        <%
            Cookie galletas[] = request.getCookies();
            for (Cookie c : galletas) {
                if (c.getName().equals("nombre") || c.getName().equals("apellidos") || c.getName().equals("sexo")) {
                    out.print(c.getName() + ":" + c.getValue() + "<br/>");
                }
            }

            if (request.getParameter("logout") != null) {
                for (Cookie c : galletas) {
                    if (c.getName().equals("nombre")) {
                        c.setMaxAge(0);
                    }

                    if (c.getName().equals("apellidos")) {
                        c.setMaxAge(0);
                    }

                    if (c.getName().equals("sexo")) {
                        c.setMaxAge(0);
                    }

                    response.sendRedirect("index.jsp");
                }
            }
        %>
        <form action="hombre.jsp" method="get">
            <input type="submit" name="logout" value="Deslogarse"/>
        </form>
    </body>
</html>
