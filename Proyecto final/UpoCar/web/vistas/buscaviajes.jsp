<%@include file="index_header.jsp" %>
<div class="container-fluid">
<div id="background-firstlook">
            <h1>�Buscar viaje!</h1>                    

            <s:form action="buscaViaje">
                
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-xs-12 col-lg-2">
                        <s:textfield cssClass="form-control" name="origen" placeholder="Origen"></s:textfield>                            
                        </div>

                        <div class="col-xs-12 col-lg-2">
                        <s:textfield cssClass="form-control" name="destino" placeholder="Destino"></s:textfield>                            
                        </div>

                        <div class="col-xs-12 col-lg-2">
                            <input type="date" class="form-control"/>
                        </div>                                
                    <div class="col-xs-12 col-lg-2">
                    <s:submit name="buscar" value="Buscar viaje" cssClass="btn btn-default btnBuscar"></s:submit>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                
            </s:form>
            
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8 colum-height">
                    <div class="col-xs-12 col-sm-2 col-lg-3 color1">
                        <p>Imagen</p>
                        <p>usuario</p>
                        <p>Puntuacion</p>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-lg-4 color2">
                        <p>Origen:</p>
                        <p>Destino:</p>
                        <p>Precio:</p>
                        <p>Plazas disponibles:</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-5 color3">
                        <p>Foto coche</p>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>
            
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8 colum-height">
                    <div class="col-xs-12 col-lg-12 color4">
                        <br/>
                        <br/>
                        <br/>
                        <p> ... </p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>

</div>
</div>
<%@include file="index_footer.jsp" %>