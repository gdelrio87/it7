<%-- 
    Document   : login
    Created on : 11-abr-2018, 18:16:26
    Author     : Gonza
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
            if (request.getParameter("deslogar") != null) {

                try {
                    epd7.SingleSignOn_Service service = new epd7.SingleSignOn_Service();
                    epd7.SingleSignOn port = service.getSingleSignOnPort();
                    // TODO initialize WS operation arguments here
                    long token = Long.parseLong(request.getParameter("token"));
                    // TODO process result here
                    boolean result = port.logout(token);
                    session.invalidate();
                    response.sendRedirect(request.getContextPath()+"/index.jsp");
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
            }else{
        %>

        <h1>Hello <% Cookie[] cookies = request.getCookies();
                Long token = new Long(0);
            for (Cookie c : cookies) {
                if (c.getName().equals(session.getAttribute("usuario"))) {
                     token = Long.parseLong(c.getValue());
                    out.write(token.toString());
                }
            }

            %>

            <form action="" method="POST" >
                <input type="hidden" name="token" value="<%= token %>" />
                <input type="submit" name="deslogar" value="Deslogar">
            </form></h1>
            <% }%>
    </body>
</html>
