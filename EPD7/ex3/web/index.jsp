<%-- 
    Document   : index
    Created on : 09-abr-2018, 18:46:18
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
        <form action="" method="POST">

            Num1 <input name="num1" type="number" /><br />
            Num2 <input name="num2" type="number" />
            <input type="submit" value="Enviar" name="enviar" />
        </form>

        <% if (request.getParameter("enviar") != null) {
                try {
                    ex1.RestaNum_Service service = new ex1.RestaNum_Service();
                    ex1.RestaNum port = service.getRestaNumPort();
                    // TODO initialize WS operation arguments here
                    int num1 = Integer.parseInt(request.getParameter("num1"));
                    int num2 = Integer.parseInt(request.getParameter("num2"));
                    // TODO process result here
                    java.lang.Integer result = port.resta(num1, num2);
                    out.println("Result = " + result);
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }

            } %>
    </body>

    

</html>
