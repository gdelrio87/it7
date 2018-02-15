<%
    String sesUsuario = (String) session.getAttribute("usuario");
    if (sesUsuario == null) {
        String cp = request.getContextPath();
        String rp = request.getRequestURI();
        //rp = rp.replace(cp, "");
//definimos en la sesion el atributo fuente
        session.setAttribute("fuente",rp);
%>
<%--<jsp:forward page="acceso.jsp"/>--%>
<%
    response.sendRedirect("acceso.jsp");
    }
%>