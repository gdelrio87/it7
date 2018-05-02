<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            <%@include file="../librerias/bootstrap-3.3.7-dist/css/bootstrap.min.css" %>
            <%@include file="../css/css.css" %>
        </style>
        <title>UpoCar</title>
    </head>
    <body>
        <s:set name="theme" value="'simple'" scope="page" /> <!-- Elimina el estilo de Struts de esta pagina -->

        <nav class="navbar navbar-default">
            <div class="navbar-header">                    
                <a class="navbar-brand" href="#">UPOCAR</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">                    
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Registrarse</a></li>                        
                </ul>
            </div>
        </nav>       
