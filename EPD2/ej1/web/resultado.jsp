<%-- 
    Document   : resultado
    Created on : 14-feb-2018, 18:13:59
    Author     : Grupo7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Definición objeto out</th>
                <th>Resultado</th>
            </tr>     
            <tr>
                <td>getBufferSize() devuelve el tamaño del buffer por el JspWriter:</td>
                <td><%= out.getBufferSize() %></td>
            </tr>
            <tr>
                <td>getRemaining() devuelve el numero de bytes usados en el buffer:</td>
                <td><%= out.getRemaining() %></td>
            </tr>
            
            <tr>
                <td>isAutoFlush() indica si el JspWriter se está descargando automáticamente:</td>
                <td><%= out.isAutoFlush() %></td>
            </tr>
            <tr>
                <td>print() pinta el valor del argumento como texto:</td>
                <td><% out.print("Pintar cadena."); %></td>
            </tr>
            <tr>
                <td>println() pinta el valor del argumento y entonces termina la linea:</td>
                <td><% out.println("Pintar cadena \\n."); %></td>
            </tr>
            <tr>
                <td>write() pinta el valor del argumento:</td>
                <td><% out.write("Pintar cadena."); %></td>
            </tr>
            <tr>
                <td>flush() devuelve y pinta lo que hay actualmente en el buffer:</td>
                <td><% out.flush(); %></td>
            </tr>
            <tr>
                <td>clearBuffer limpia el contenido actual del buffer:</td>
                <td><% out.clearBuffer(); %></td>
            </tr>
            
            <tr>
                <th>Definición objeto request</th>
                <th>Resultado</th>
            </tr>
            <tr>
                <td>getContextPath() devuelve la parte del URI de solicitud que indica el contexto de la solicitud:</td>
                <td><%= request.getContextPath() %></td>
            </tr>
            <tr>
                <td>getPathInfo() devuelve cualquier información de ruta adicional asociada con la URL que el cliente envió cuando realizó esta solicitud:</td>
                <td><%= request.getPathInfo() %></td>
            </tr>
            <tr>
                <td>getPathTranslated() devuelve cualquier información de ruta adicional después del nombre del servlet pero antes de la cadena de consulta, y la traduce a una ruta real:</td>
                <td><%= request.getPathTranslated() %></td>
            </tr>
            <tr>
                <td>getQueryString() devuelve la cadena de consulta que está contenida en la URL de solicitud después de la ruta:</td>
                <td><%= request.getQueryString() %></td>
            </tr>
            <tr>
                <td>getRequestURI() devuelve la parte de la URL de esta solicitud desde el nombre del protocolo hasta la cadena de consulta en la primera línea de la solicitud HTTP:</td>
                <td><%= request.getRequestURI() %></td>
            </tr>
            
        </table>
        
        
    </body>
</html>
