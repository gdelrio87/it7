<%-- 
    Document   : index
    Created on : 22-feb-2018, 12:45:47
    Author     : Grupo 7 IT 
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
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

        final String controlador = "com.mysql.jdbc.Driver";
        final String url = "jdbc:mysql://localhost/aparcamiento";
        final String usuario = "root";
        final String clave = "";

        public Aparcamiento() {
            
            try {
                Class.forName(controlador);

            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Error loading JDBC driver"
                        + " class. Cause: " + e);
            }

        }

        public List<Coche> listadoCoches() throws SQLException {

            List<Coche> listaCoches = new ArrayList<Coche>();

            Connection conexion = DriverManager.getConnection(url, usuario, clave);

            Statement st = (Statement) conexion.createStatement();

            ResultSet resultado = st.executeQuery("select * from coche");

            while (resultado.next()) {

                Coche coche = new Coche(resultado.getString("matricula"), resultado.getString("modelo"), resultado.getTime("horaEntrada"), resultado.getTime("horaSalida"), resultado.getInt("tiempoPermitido"));
                listaCoches.add(coche);
            }

            resultado.close();
            st.close();
            conexion.close();

            return listaCoches;
        }
    }


%>

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
        <table border="1">
            <tr><th>Matricula</th><th>Modelo</th><th>Hora de entrada</th><th>Hora de salida</th><th>Tiempo permitido</th></tr>
                    <%                        
                        Aparcamiento aparcamiento = new Aparcamiento();
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        List<Coche> listadoAparcamientos = aparcamiento.listadoCoches();
                        for (int i = 0; i < listadoAparcamientos.size(); i++) {
                    %>
            <tr>
                <td><%= listadoAparcamientos.get(i).getMatricula()%></td>
                <td><%= listadoAparcamientos.get(i).getModelo()%></td>                
                <td><%=  sdf.format(listadoAparcamientos.get(i).getHoraEntrada())%></td>
                <td><% if (!sdf.format(listadoAparcamientos.get(i).getHoraSalida()).equals("00:00") ) {
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
    </body>
</html>
