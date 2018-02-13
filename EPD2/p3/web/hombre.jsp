<%-- 
    Document   : hombre
    Created on : 13-feb-2018, 11:55:12
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
        <%
            Cookie galletas[] = request.getCookies();
            if (request.getParameter("logout") != null) {
                for (Cookie c : galletas) {
                    if (c.getName().equals("nombre")) {
                        c.setMaxAge(-1);
                        c.setPath("/");                        
                    }

                    if (c.getName().equals("apellidos")) {
                        c.setMaxAge(-1);
                        c.setPath("/");
                    }

                    if (c.getName().equals("sexo")) {
                        c.setMaxAge(-1);
                        c.setPath("/");
                    }
                }
                response.sendRedirect("index.jsp");
            }
        %>
        <h1>Bienvenido</h1>
        <%            
            for (Cookie c : galletas) {
                if (c.getName().equals("nombre") || c.getName().equals("apellidos") || c.getName().equals("sexo")) {
                    out.print(c.getName() + ":" + c.getValue() + "<br/>");
                }
            }
        %>        
        <form action="hombre.jsp" method="get">
            <input type="submit" name="logout" value="Deslogarse"/>
        </form>
    </body>
</html>
