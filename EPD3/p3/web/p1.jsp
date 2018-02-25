<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:45:47
    Author     : Grupo 7 IT 
--%>

<%
    class Coche {

        private String matricula;
        private String modelo;
        private Time horaEntrada;
        private Time horaSalida;
        private int tiempoPermitido;

        public Coche(String matricula, String modelo, Time horaEntrada, Time horaSalida, int tiempoPermitido) {
            this.matricula = matricula;
            this.modelo = modelo;
            this.horaEntrada = horaEntrada;
            this.horaSalida = horaSalida;
            this.tiempoPermitido = tiempoPermitido;
        }

        public String getMatricula() {
            return matricula;
        }

        public void setMatricula(String matricula) {
            this.matricula = matricula;
        }

        public String getModelo() {
            return modelo;
        }

        public void setModelo(String modelo) {
            this.modelo = modelo;
        }

        public Time getHoraEntrada() {
            return horaEntrada;
        }

        public void setHoraEntrada(Time horaEntrada) {
            this.horaEntrada = horaEntrada;
        }

        public Time getHoraSalida() {
            return horaSalida;
        }

        public void setHoraSalida(Time horaSalida) {
            this.horaSalida = horaSalida;
        }

        public int getTiempoPermitido() {
            return tiempoPermitido;
        }

        public void setTiempoPermitido(int tiempoPermitido) {
            this.tiempoPermitido = tiempoPermitido;
        }

    }

    class Aparcamiento {

        public List<Coche> listadoCoches() {
            List<Coche> listaCoches = new ArrayList<Coche>();

            Coche coche1 = new Coche("12784HIH", "BMW", new Time(10, 05, 0), null, 30);
            listaCoches.add(coche1);

            Coche coche2 = new Coche("76234AAC", "Toyota", new Time(10, 07, 0), new Time(10, 35, 0), 30);
            listaCoches.add(coche2);

            Coche coche3 = new Coche("32162BAQ", "Audi", new Time(10, 45, 0), null, 90);
            listaCoches.add(coche3);

            Coche coche4 = new Coche("87823CDA", "Mercedes", new Time(10, 46, 0), new Time(11, 05, 0), 15);
            listaCoches.add(coche4);

            return listaCoches;
        }
    }
%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Time"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("enviar") == null && request.getParameter("aparcados") == null) {
        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        Aparcamiento aparcamiento = new Aparcamiento();
                        List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        ;%></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
            </tr>

            <%
                }
            %>
        </table>
        <%
        } else if (request.getParameter("enviar") != null && request.getParameter("aparcados") == null) {
            String buscar = (String) request.getParameter("buscar");
        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        Aparcamiento aparcamiento = new Aparcamiento();
                        List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                            if (listadoAparcamientos.get(i).getMatricula().substring(0, buscar.length()).equals(buscar)) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        ;%></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
            </tr>

            <%
                    }
                }
            %>
        </table>
        <%    } else if (request.getParameter("enviar") == null && request.getParameter("aparcados") != null) {

        %>
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%  SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        Aparcamiento aparcamiento = new Aparcamiento();
                        List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                            if (listadoAparcamientos.get(i).getHoraSalida() == null) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (listadoAparcamientos.get(i).getHoraSalida() != null) {
                        out.print(sdf.format(listadoAparcamientos.get(i).getHoraSalida()));
                    } else {
                    %>
                    --
                    <%
                        }
                        ;%></td>
                <td><%= listadoAparcamientos.get(i).getTiempoPermitido()%></td>
            </tr>

            <%
                    }
                }
            %>
        </table>
        <%
            }
        %>
        <form>
            Buscar inicio matr&iacute;cula: <input type="text" name="buscar" />
            <input type="submit" name="enviar" value="Enviar" />
        </form>
        <form>
            Buscar coches que se encuentran en el aparcamiento: <input type="submit" name="aparcados" value="Aparcados"   />
        </form>
    </body>
</html>
