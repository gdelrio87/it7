<%-- 
    Document   : index
    Created on : 19-may-2018, 17:17:50
    Author     : Gonza
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="ClientREST.entidades.Games"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="ClientREST.JerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            JerseyClient client1 = new JerseyClient();
            GenericType<List<Games>> listaGames = new GenericType<List<Games>>() {
            };

            if (request.getParameter("Add") != null) {

                Games game = new Games(null, request.getParameter("addName"), request.getParameter("addConsola"), Date.valueOf(request.getParameter("addYear")));
                client1.create_XML(game);
            } else if (request.getParameter("Update") != null) {
                Games game = new Games();
               
                if (request.getParameter("updateName") != null) {
                    game.setName(request.getParameter("updateName"));
                }
                if (request.getParameter("updateConsola") != null) {
                    game.setConsole(request.getParameter("updateConsola"));
                }
                if (request.getParameter("updateYear") != null) {
                    game.setYear(Date.valueOf(request.getParameter("updateYear")));
                }
                game.setId(Integer.valueOf(request.getParameter("updateLastId")));
                client1.edit_XML(game, request.getParameter("updateLastId"));
            }else if (request.getParameter("Delete") != null) {
                client1.remove(request.getParameter("deleteId"));
            }
            List<Games> lista = client1.findAll_XML(listaGames);
        %>
        <table>
            <%  for (Games game : lista) {
                    out.print("<tr>");
                    out.print("<td>" + game.getId() + "</td>");
                    out.print("<td>" + game.getName() + "</td>");
                    out.print("<td>" + game.getYear() + "</td>");
                    out.print("<td>" + game.getConsole() + "</td>");
                    out.print("</tr>");
                }
            %>
        </table>
        <p>Delete</p>
        <form action="#" method="post">
            <input type="number" name="deleteId">
            <input type="submit" name="Delete">
        </form>

        <p>Create</p>
        <form action="#" method="post">

            ID: <input type="number" name="addId">
            Name: <input type="text" name="addName">
            Consola:<input type="text" name="addConsola">
            Year: <input type="date" name="addYear">
            <input type="submit" name="Add">
        </form>

        <p>Update</p>
        <form action="#" method="post">
            ID a modificar: <input type="number" name="updateLastId">
            ID: <input type="number" name="updateId">
            Name: <input type="text" name="updateName">
            Consola:<input type="text" name="updateConsola">
            Year: <input type="date" name="updateYear">
            <input type="submit" name="Update">
        </form>

    </body>
</html>
