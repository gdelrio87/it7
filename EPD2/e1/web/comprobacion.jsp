<%
    String usuario = request.getParameter("usuario");
    String clave = request.getParameter("clave");
    if (usuario.equals(clave)) {
        session.setAttribute("usuario", usuario);
        String fuente = (String) session.getAttribute("fuente");
        session.removeAttribute("fuente");
        response.sendRedirect(fuente);
%>
<%--<jsp:forward page="<%=fuente%>"/>;--%>
<%
} else {
    session.setAttribute("fallo", "si");
%>
<%--<jsp:forward page="acceso.jsp"/>;--%>
<%
    response.sendRedirect("acceso.jsp");
    }
%>