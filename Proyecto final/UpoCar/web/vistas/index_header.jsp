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
                <s:form action="toIndex">
                    <s:submit name="toIndex" value="UPOCAR" cssClass="navbar-brand"></s:submit>
                </s:form>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">                    
                <ul class="nav navbar-nav navbar-right">
                    <!--<li><a href="#">Login</a></li> MIRAR COMO SE PONEN BIEN LOS ESTILOS EN VEZ DEL BOTON FEO DE STRUTS2-->
                    <!--<li><a href="#">Registrarse</a></li>-->
                    <li>
                        <s:form action="toLogin">
                            <s:submit name="toLogin" value="Login" cssClass="btn btn-default"></s:submit>
                        </s:form>
                    </li>   

                    <li>
                        <s:form action="toRegistro">
                            <s:submit name="toRegistro" value="Registro" cssClass="btn btn-default"></s:submit>
                        </s:form>
                    </li> 
                </ul>
            </div>
        </nav>       
