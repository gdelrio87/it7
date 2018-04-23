<%-- 
    Document   : add.jsp
    Created on : 21-abr-2018, 19:29:57
    Author     : Gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva de las Guardas. System Manager</title>
        <link rel="stylesheet" href="/ItEv2STRUTS_2/struts/xhtml/styles.css" type="text/css"/>
        <script src="/ItEv2STRUTS_2/struts/utils.js" type="text/javascript"></script>
        <s:head />
    </head>
    <body>
        <h1>Reserva de las Guardas. Add a new animal</h1>
        <script type="text/javascript" src="/ItEv2STRUTS_2/struts/xhtml/validation.js"></script>
        <script type="text/javascript" src="/ItEv2STRUTS_2/struts/utils.js"></script>

        <s:form id="nuevoAnimal" name="nuevoAnimal" action="listadoAdd" method="post" >
            <table class="wwFormTable">
                <tr>
                    <td class="tdLabel"><label for="nuevoAnimal_identificador" class="label"></label></td>
                    <td><s:textfield key="identificador" name="identificador" value="" id="nuevoAnimal_identificador" /></td>
                </tr>


                <tr><%--<td> <s:select key="tipoAnimal" list="listaTipoAnimales" name="tipoAnimal"  listValue="animal" listKey="animal"></s:select></td> --%>
                   <td class="tdLabel"><label for="nuevoAnimal_tipoAnimal" class="label">Animal:</label></td>
                    <td><select name="tipoAnimal" id="nuevoAnimal_tipoAnimal">
                            <option value="lobo">lobo</option>
                            <option value="tigre">tigre</option>
                            <option value="jirafa">jirafa</option>
                            <option value="elefante">elefante</option>


                        </select>
                    </td>
                </tr>


                <tr>
                    <td class="tdLabel"><label for="nuevoAnimal_pais" class="label"></label></td>
                    <td><s:textfield key="pais" name="pais" value="" id="nuevoAnimal_pais" /></td>
                </tr>


                <tr>
                    <td class="tdLabel"><label for="nuevoAnimal_precio" class="label"></label></td>
                    <td><s:textfield key="precio" name="precio" value="" id="nuevoAnimal_precio" /></td>
                </tr>


                <tr>
                    <td class="tdLabel"><label for="nuevoAnimal_email" class="label"></label></td>
                    <td
                        ><s:textfield key="email" name="email" value="" id="nuevoAnimal_email" /></td>
                </tr>


                <tr>
                    <td colspan="2"><div align="right"><input type="submit" id="nuevoAnimal_0" value="Add"/>
                        </div></td>
                </tr>


            </table></s:form>



        <script type="text/javascript">
            function validateForm_nuevoAnimal() {
                var getFieldValue = function (field) {
                    var type = field.type ? field.type : field[0].type;
                    if (type == 'select-one' || type == 'select-multiple') {
                        return (field.selectedIndex == -1 ? "" : field.options[field.selectedIndex].value);
                    } else if (type == 'checkbox' || type == 'radio') {
                        if (!field.length) {
                            field = [field];
                        }
                        for (var i = 0; i < field.length; i++) {
                            if (field[i].checked) {
                                return field[i].value;
                            }
                        }
                        return "";
                    }
                    return field.value;
                }
                form = document.getElementById("nuevoAnimal");
                clearErrorMessages(form);
                clearErrorLabels(form);

                var errors = false;
                var continueValidation = true;
                // field name: identificador
                // validator name: requiredstring
                if (form.elements['identificador']) {
                    field = form.elements['identificador'];

                    var error = "Identifier is required";
                    var fieldValue = getFieldValue(field);

                    if (continueValidation && fieldValue != null && (fieldValue == "" || fieldValue.replace(/^\s+|\s+$/g, "").length == 0)) {
                        addError(field, error);
                        errors = true;

                    }
                }
                // field name: identificador
                // validator name: regex
                if (form.elements['identificador']) {
                    field = form.elements['identificador'];

                    var error = "Not correct syntax";
                    var fieldValue = getFieldValue(field);

                    if (continueValidation && fieldValue != null && !fieldValue.match("^[a-zA-Z]{4}[0-9]{4}$")) {
                        addError(field, error);
                        errors = true;

                    }
                }
                // field name: pais
                // validator name: requiredstring
                if (form.elements['pais']) {
                    field = form.elements['pais'];

                    var error = "Country Required";
                    var fieldValue = getFieldValue(field);

                    if (continueValidation && fieldValue != null && (fieldValue == "" || fieldValue.replace(/^\s+|\s+$/g, "").length == 0)) {
                        addError(field, error);
                        errors = true;

                    }
                }
                // field name: precio
                // validator name: required
                if (form.elements['precio']) {
                    field = form.elements['precio'];

                    var error = "Price Required";
                    var fieldValue = getFieldValue(field);

                    if (fieldValue == "") {
                        addError(field, error);
                        errors = true;

                    }
                }
                // field name: precio
                // validator name: int
                if (form.elements['precio']) {
                    field = form.elements['precio'];

                    var error = "Price need to be between 100000 and 999999";
                    var fieldValue = getFieldValue(field);

                    if (continueValidation && fieldValue != null) {
                        if (parseInt(fieldValue) <
                                100000 ||
                                parseInt(fieldValue) >
                                999999) {
                            addError(field, error);
                            errors = true;

                        }
                    }
                }
                // field name: email
                // validator name: required
                if (form.elements['email']) {
                    field = form.elements['email'];

                    var error = "Email Required";
                    var fieldValue = getFieldValue(field);

                    if (fieldValue == "") {
                        addError(field, error);
                        errors = true;

                    }
                }
                // field name: email
                // validator name: email
                if (form.elements['email']) {
                    field = form.elements['email'];

                    var error = "Not correct email";
                    var fieldValue = getFieldValue(field);

                    if (continueValidation && fieldValue != null && fieldValue.length > 0 && fieldValue.match("\\b^[\'_a-z0-9-\\+]+(\\.[\'_a-z0-9-\\+]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*\\.([a-z]{2}|aero|arpa|asia|biz|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|nato|net|org|pro|tel|travel|xxx)$\\b") == null) {
                        addError(field, error);
                        errors = true;

                    }
                }

                return !errors;
            }
        </script>

    </body>
</html>

