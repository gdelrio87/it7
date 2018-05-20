<%@include file="./index_header.jsp" %>
<div class="container-fluid">
    <div id="background-firstlook">
        &nbsp;
        <h1>Gesti&oacute;n Viajes</h1>
        <hr />
        &nbsp;
        <div class="row">

            <div class="col-lg-12">
                <s:form method="post" action="buscarUsuarioViaje">
                    <s:textfield placeholder="Nombre conductor..." name="nomUsuario" />
                    <s:submit name="buscarUsuario" value="Buscar" />
                </s:form>
            </div>
            <div class="col-lg-12">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                <table class="col-lg-12" border="1">
                    <tr>
                        <th>ID</th>
                        <th>Conductor</th>
                        <th>Origen</th>
                        <th>Destino</th>
                        <th>Vehiculo</th>
                        <th>Lugar de Recogida</th>
                        <th>Precio/persona</th>
                        <th>Plazas max</th>
                        <th>Fecha y Hora Salida</th>
                        <th></th>
                    </tr>
                  <s:iterator value="listadoViajes">
                    <tr>
                        <td><s:property value="idViaje" /></td>
                        <td><s:property value="idUsuarioPublica.nomUsuario" /></td>
                        <td><s:property value="idLocalidadOrigen.nombre" /></td>
                        <td><s:property value="idLocalidadDestino.nombre" /></td>
                        <td><s:property value="idVehiculoElegido.marca" /> <s:property value="idVehiculoElegido.modelo" /></td>
                        <td><s:property value="puntoRecogida" /></td>
                        <td><s:property value="percioPersona" /></td>
                        <td><s:property value="plazasMax" /></td>
                        <td><s:property value="fechaSalida" /></td>
                        <td><s:form action="deleteViaje" ><button name="idViaje" value="<s:property value="idViaje" />"><img class="foto-mi-cuenta img-circle img-responsive" src="../images/papelera.png" /></button></s:form></td>
                    </tr>
                    </s:iterator>
                </table>
                </div>
                <div class="col-lg-1"></div>
            </div>
            <div class="col-lg-12"><hr /></div>
            
            <div class="col-lg-12">
                <s:form method="post" action="">
                    <s:textfield placeholder="Origen" name=""></s:textfield>
                    <s:textfield placeholder="Destino" name=""></s:textfield>
                    <s:textfield placeholder="Punto de Recogida" name=""></s:textfield>
                    <s:textfield placeholder="Precio" name=""></s:textfield>
                    <s:submit name="add" value="Add"></s:submit>
                </s:form>
            </div>

        </div>

        <div class="col-lg-2"></div>
    </div>
</div>
<%@include file="./index_footer.jsp" %>
