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
            Tipo <input name="tipo" type="text" /><br />
            Num2 <input name="num2" type="number" />
            <input type="submit" value="Enviar" name="enviar" />
        </form>

        <% if (request.getParameter("enviar") != null) {
                
            try {
                ex4.Calculadora_Service service = new ex4.Calculadora_Service();
                ex4.Calculadora port = service.getCalculadoraPort();
                // TODO initialize WS operation arguments here
                int num1 = Integer.parseInt(request.getParameter("num1"));
                int num2 = Integer.parseInt(request.getParameter("num2"));
                String tipo = request.getParameter("tipo");
                // TODO process result here
                double result = port.calculadora(num1, num2, tipo);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
       
        } %>
    </body>



</html>
