<%-- 
    Document   : index
    Created on : 11-abr-2018, 18:16:08
    Author     : Grupo 7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EPD7-P7</title>
    </head>
    <body>
        <%

            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                if (cookies.length > 0) {

                    for (Cookie c : cookies) {
                        if (c.getName().equals(session.getAttribute("usuario"))) {

                            try {
                                epd7.SingleSignOn_Service service = new epd7.SingleSignOn_Service();
                                epd7.SingleSignOn port = service.getSingleSignOnPort();
                                // TODO initialize WS operation arguments here
                                long token = Long.parseLong(c.getValue());
                                // TODO process result here
                                boolean existe = port.isAlive(token);
                                if (existe) {
                                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                                }

                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                            }

                        }
                    }

                }
            }
        %>

        <table>
            <form action="" method="POST">
                <tr><td>Usuario:</td><td><input type="text" name="usuario" /></td></tr>
                <tr><td>Password</td><td><input type="text" name="password" /></td></tr>
                <tr><td><input type="submit" name="login" value="Login" /></td></tr>
            </form>
        </table>

        <%            if (request.getParameter("login") != null) {

                try {
                    epd7.SingleSignOn_Service service = new epd7.SingleSignOn_Service();
                    epd7.SingleSignOn port = service.getSingleSignOnPort();
                    // TODO initialize WS operation arguments here
                    java.lang.String usuario = request.getParameter("usuario");
                    java.lang.String password = request.getParameter("password");
                    // TODO process result here
                    Long token = port.login(usuario, password);
                    session.setAttribute("usuario", usuario);
                    Cookie cookie = new Cookie(usuario, token.toString());
                    response.addCookie(cookie);
                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
            }
        %>
    </body>
</html>
