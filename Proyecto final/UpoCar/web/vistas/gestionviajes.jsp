<%@include file="./index_header.jsp" %>
<div class="container-fluid">
    <div id="background-firstlook">
        &nbsp;
        <h1>Gesti&oacute;n Viajes</h1>
        <hr />
        &nbsp;
        <div class="row">

            <div class="col-lg-12">
                <s:form method="post" action="">
                    <s:textfield placeholder="Nombre usuario..." name="nombreUsuario" />
                    <s:submit name="buscarUsuario" value="Buscar" />
                </s:form>
            </div>
            <div class="col-lg-12">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                <table class="col-lg-12" border="1">
                    <tr>
                        <th>Origen</th>
                        <th>Destino</th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>Sevilla</td>
                        <td>Madrid</td>
                        <td><img class="foto-mi-cuenta img-circle img-responsive" src="../images/papelera.png" /></td>
                    </tr>
                </table>
                </div>
                <div class="col-lg-4"></div>
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
