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
                <s:form method="post" action="toGestionViajes">
                    <s:submit name="buscarUsuario" value="Mostrar todos" />
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
                        <s:if test="%{listadoViajes.size() > 0}">
                            <s:iterator value="listadoViajes">
                                <tr>
                                    <td><s:property value="idViaje" /></td>
                                    <td><s:property value="idUsuarioPublica.nomUsuario" /></td>
                                    <td><s:property value="idLocalidadOrigen.nombre" /></td>
                                    <td><s:property value="idLocalidadDestino.nombre" /></td>
                                    <td><s:property value="idVehiculoElegido.marca" /> <s:property value="idVehiculoElegido.modelo" /></td>
                                    <td><s:property value="puntoRecogida" /></td>
                                    <td id="precioPersona"><s:property value="percioPersona" /></td>
                                    <td id="plazasMax"><s:property value="plazasMax" /></td>
                                    <td><s:property value="fechaSalida" /></td>
                                    <td>
                                        <s:form action="deleteViaje" ><button name="idViaje" value="<s:property value="idViaje" />"><img class="foto-mi-cuenta img-circle img-responsive" src="../images/papelera.png" /></button></s:form>
                                            <button class="updateButton" onclick="updateElements()" /><img class="foto-mi-cuenta img-circle img-responsive" src="../images/update.png" /></button>
                                        </td>
                                    </tr>
                            </s:iterator>
                        </s:if>
                        <s:else>
                            <tr>
                                <td colspan="9">No hay coincidencias</td>
                            </tr>
                        </s:else>
                    </table>
                </div>
                <div class="col-lg-1"></div>
            </div>
            <div class="col-lg-12"><hr /></div>


            <div id="formularioUpdate" style="display: none" class="col-lg-12">

                <hr />
                <h2>Update</h2>

                <s:form method="post" action="updateViaje">
                    <s:textfield  placeholder="Plazas máximas..." name="updatePlazasMax" ></s:textfield>
                    <s:textfield  placeholder="Precio por persona..." name="updatePrecioPersona"></s:textfield>
                    <s:submit value="Update"></s:submit>
                </s:form>
            </div>

        </div>

        <div class="col-lg-2"></div>
    </div>
</div>

<script type="text/javascript">
    $("document").ready(function () {
        $(".updateButton").click(function () {
            $("#formularioUpdate").toggle();
        });
    });
</script>
<%@include file="./index_footer.jsp" %>
