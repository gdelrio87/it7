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
        <div class="container-fluid">
            <div class="col-lg-12">
                <div class="col-lg-2">
                    <input type="image" name="logo" class="img-responsive">
                </div>
                <div class="col-lg-10">
                    <s:form action="login">
                        <s:submit name="login" value="Login" cssClass="btn btn-primary"></s:submit>
                    </s:form>
                    <s:form action="registro">
                        <s:submit name="registro" value="Registro" cssClass="btn btn-primary"></s:submit>
                    </s:form>
                </div>
            </div>        

            <div id="background-firstlook" class="firstlook">
                <div class="col-md-6 col-md-offset-3" id="contentPpal">
                    <div id="infoPpal">
                        <h1>¡Bienvenido a UpoCar!</h1>                    

                        <s:form action="buscaViaje">
                            <div class="input-group">
                                <s:textfield cssClass="form-control" name="origen" placeholder="Origen"></s:textfield>                            

                                <s:textfield cssClass="form-control" name="destino" placeholder="Destino"></s:textfield>                            

                                <s:textfield cssClass="form-control" name="fechaViaje" placeholder="dd/MM/yyyy"></s:textfield>  <!-- Sustituir por un date picker -->                          

                                <s:submit name="buscar" value="Buscar viaje" cssClass="btn btn-primary"></s:submit>
                                </div>
                        </s:form>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="row">

                    <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
                        <ul class="adress">
                            <span>C/ Avd. de las Universidades 209</span>    
                            <li>
                                <p>Sistema de comparticion de vehiculos</p>
                            </li>

                            <li>
                                <p>634 998 267</p>
                            </li>

                            <li>
                                <p>info@upocar.com</p>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <ul class="contact">
                            <span>Contacto</span>    
                            <li>
                                <a href="#">Upocar</a>
                            </li>

                            <li>
                                <a href="#">Sobre nosotros</a>
                            </li>

                            <li>
                                <a href="#">Blog</a>
                            </li>

                            <li>
                                <a href="#">Galeria</a>
                            </li>

                            <li>
                                <a href="#">Contacta</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                        <ul class="social">
                            <span>Social</span>    
                            <li>
                                <a href="#"><img src="images/facebook.png" class="rrss" alt="facebook"/></a>
                            </li>

                            <li>
                                <a href="#"><img src="images/twitter.png" class="rrss" alt="twitter"/></a>
                            </li>

                            <li>
                                <a href="#"><img src="images/pinterest.png" class="rrss" alt="pinterest"/></a>
                            </li>

                            <li>
                                <a href="#"><img src="images/instagram.png" class="rrss" alt="instagram"/></a>
                            </li>
                        </ul>
                    </div>


                </div> 
            </div>
        </footer>

    </body>
</html>
