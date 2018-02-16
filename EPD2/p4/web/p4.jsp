<%-- 
    Document   : p4
    Created on : 15-feb-2018, 21:59:37
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
        <% String userAgent = (String) request.getHeader("user-agent");
        
          if (userAgent.equals("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36")) {
                
        %><jsp:forward page="chrome.jsp" /><%
            
        } else if (userAgent.equals("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0")) {

        %><jsp:forward page="mozilla.jsp" /><%
            
        } else if (userAgent.equals("Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko")) {

        %><jsp:forward page="ie.jsp" /><%
            
        } else if (userAgent.equals("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299")) {

        %><jsp:forward page="edge.jsp" /><%
            
        } else if (userAgent.equals("Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac OS X) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0 Mobile/15D60 Safari/604.1")) {

        %><jsp:forward page="safari.jsp" /><%

        } else {

        %><jsp:forward page="error.jsp" /><%
            
            }
            

        %>
    </body>
</html>

