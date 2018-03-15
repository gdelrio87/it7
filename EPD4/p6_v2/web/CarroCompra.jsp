<%-- 
    Document   : CarroCompra
    Author     : ricardo
--%>

<%--Following directive allows the JSP page to use any of the builtin object session methods such as 
session.getCreationTime() or session.getLastAccessTime(): --%>
<%@ page session="true"%>
<%@page import="java.util.*" %>
<%@page import="libreria.*" %>
<%
        List<String> listaIsbns = (List<String>) session.getAttribute("tienda.carro");

    //List<Libro> listaCompra = Almacen.consultaListaLibrosSolicitados(listaIsbns);
    List<Libro> listaCompra = (List<Libro>)request.getAttribute("librosSolicitados");
    if (listaCompra != null && (listaCompra.size() > 0)) {
%>
<center>
    <table border=1 cellspacing=1 cellpadding=2 width="100%" bgcolor="#FFFFFF">
        <tr>
            <td><b>Titulo</b></td>
            <td><b>Autor</b></td>
            <td><b>Precio</b></td>
            <td><b>Cantidad</b></td>
            <td><b>Editorial</b></td>
        </tr>
        <%
            for (int idx = 0; idx < listaCompra.size(); idx++) {
                Libro libro = listaCompra.get(idx);                
                //request.setAttribute("idEditorial", libro.getId()); 
        %>
        <tr>
            <td><b><%= libro.getTitulo()%></b></td>
            <td><b><%= libro.getAutor()%></b></td>
            <td><b><%= libro.getPrecio()%></b></td>
            <td><b><%= libro.getCantidad()%></b></td>
            <td><b><%= libro.getEditorial().getNombre()%></b></td>
        </tr>
        <%
            }%>
    </table>
</center>
<p>

<form name="formularioComprar" action="LibreriaServlet" method="post">
    <input type="hidden" name="Accion" value="comprar">
    <input type="submit" name="Comprar" value="Comprar Libros">
</form>
<%
    }
%>