<%@page import="java.sql.Time"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

        Coche coche1 = new Coche("12784HIH", "BMW", new Time(10,05,0), null, 30);
        listaCoches.add(coche1);

        Coche coche2 = new Coche("76234AAC", "Toyota", new Time(10,07,0), new Time(10,35,0), 30);
        listaCoches.add(coche2);

        Coche coche3 = new Coche("32162BAQ", "Audi", new Time(10,45,0), null, 90);
        listaCoches.add(coche3);

        Coche coche4 = new Coche("87823CDA", "Mercedes", new Time(10,46,0),new Time(11,05,0) , 15);
        listaCoches.add(coche4);

        return listaCoches;
    }
}

%>
