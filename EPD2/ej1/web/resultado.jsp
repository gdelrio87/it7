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
                <th>Campo firmulario</th>
                <th>Valor</th>
            </tr>     
            <tr>
                <td>Email:</td>
                <td><%= request.getParameter("email") %></td>
            </tr>
            <tr>
                <td>Nombre:</td>
                <td><%= request.getParameter("nombre") %></td>
            </tr>
            <tr>
                <td>Contraseña:</td>
                <td><%= request.getParameter("pass") %></td>
            </tr>
            
            <tr>
                <th>Definición objeto out</th>
                <th>Resultado</th>
            </tr>     
            <tr>
                <td>getBufferSize devuelve el tamaño del buffer por el JspWriter:</td>
                <td><%= out.getBufferSize() %></td>
            </tr>
            <tr>
                <td>getRemaining devuelve el numero de bytes usados en el buffer:</td>
                <td><%= out.getRemaining() %></td>
            </tr>
            
            <tr>
                <td>isAutoFlush indica si el JspWriter se está descargando automáticamente:</td>
                <td><%= out.isAutoFlush() %></td>
            </tr>
            <tr>
                <td>print pinta el valor del argumento como texto:</td>
                <td><% out.print("Pintar cadena."); %></td>
            </tr>
            <tr>
                <td>println pinta el valor del argumento y entonces termina la linea:</td>
                <td><% out.println("Pintar cadena \\n."); %></td>
            </tr>
            <tr>
                <td>write pinta el valor del argumento:</td>
                <td><% out.write("Pintar cadena."); %></td>
            </tr>
            <tr>
                <td>flush devuelve y pinta lo que hay actualmente en el buffer:</td>
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
                <td>getContextPath devuelve la parte del URI de solicitud que indica el contexto de la solicitud:</td>
                <td><%= request.getContextPath() %></td>
            </tr>
            <tr>
                <td>getPathInfo devuelve cualquier información de ruta adicional asociada con la URL que el cliente envió cuando realizó esta solicitud:</td>
                <td><%= request.getPathInfo() %></td>
            </tr>
            <tr>
                <td>getPathTranslated devuelve cualquier información de ruta adicional después del nombre del servlet pero antes de la cadena de consulta, y la traduce a una ruta real:</td>
                <td><%= request.getPathTranslated() %></td>
            </tr>
            <tr>
                <td>getQueryString devuelve la cadena de consulta que está contenida en la URL de solicitud después de la ruta:</td>
                <td><%= request.getQueryString() %></td>
            </tr>
            <tr>
                <td>getRequestURI devuelve la parte de la URL de esta solicitud desde el nombre del protocolo hasta la cadena de consulta en la primera línea de la solicitud HTTP:</td>
                <td><%= request.getRequestURI() %></td>
            </tr>
            
               
            <tr>
                <td>getHeaderNames devuelve una enumeración de todos los nombres de encabezado que esta solicitud contiene:</td>
                <td><%= request.getHeaderNames() %></td>
            </tr>
            <tr>
                <td>getHeader devuelve el valor del encabezado de solicitud especificado como una cadena:</td>
                <td><%= request.getHeader("Referer") %></td>
            </tr>
            <tr>
                <td>getHeaders devuelve todos los valores del encabezado de solicitud especificado como una enumeración de objetos de cadena:</td>
                <td><%= request.getHeaders("Referer") %></td>
            </tr>
            <tr>
                <td>getDateHeader devuelve el valor del encabezado de solicitud especificado como un valor largo que representa un objeto Date:</td>
                <td><%= request.getDateHeader("HEADER_IFMODSINCE") %></td>
            </tr>
            <tr>
                <td>getMethod devuelve el nombre del método HTTP con el que se realizó esta solicitud, por ejemplo, GET, POST o PUT:</td>
                <td><%= request.getMethod() %></td>
            </tr>
            <tr>
                <td>getCookies devuelve una matriz que contiene todos los objetos de Cookie que el cliente envió con esta solicitud:</td>
                <td><%= request.getCookies() %></td>
            </tr>
            <tr>
                <td>getRequestedSessionId devuelve el ID de sesión especificado por el cliente:</td>
                <td><%= request.getRequestedSessionId() %></td>
            </tr>
            <tr>
                <td>getSession devuelve la sesión actual asociada con esta solicitud, o si la solicitud no tiene una sesión, crea una:</td>
                <td><%= request.getSession() %></td>
            </tr>
            <tr>
                <td>isRequestedSessionIdValid comprueba si la ID de la sesión solicitada sigue siendo válida:</td>
                <td><%= request.isRequestedSessionIdValid() %></td>
            </tr>
            
            <tr>
                <td>getRemoteUser devuelve el inicio de sesión del usuario que hace esta solicitud, si el usuario ha sido autenticado, o nulo si el usuario no ha sido autenticado:</td>
                <td><%= request.getRemoteUser() %></td>
            </tr>
            
        </table>
        
        
    </body>
</html>
