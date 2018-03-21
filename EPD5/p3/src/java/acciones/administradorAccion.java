/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import Modelo.Aparcamiento;
import Modelo.Coche;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Time;
import java.util.List;

/**
 *
 * @author Gonza
 */
public class administradorAccion extends ActionSupport {
    
    private Aparcamiento aparcamiento;
    private List<Coche> listadoAparcamientos;
    private String matricula;
    private String matriculaOriginal;
    private String modelo;
    private Time horaEntrada;
    private Time horaSalida;
    private int tiempoPermitido;
    private String tipoDAO;
    
    public administradorAccion() {
    }
    
    public String execute() throws Exception {
        
        return SUCCESS;
    }
    
    public String insertar() throws Exception {
        aparcamiento = new Aparcamiento();

        aparcamiento.insert(getMatricula(),getModelo(),getHoraEntrada(), getHoraSalida(), getTiempoPermitido());

        return SUCCESS;
    }
    
    public String update() throws Exception {
        aparcamiento = new Aparcamiento();

        aparcamiento.update(getMatricula(),getModelo(),getHoraEntrada(), getHoraSalida(), getTiempoPermitido(), getMatriculaOriginal());

        return SUCCESS;
    }
    
    public String eliminar() throws Exception {
        aparcamiento = new Aparcamiento();

        aparcamiento.delete(getMatricula());

        return SUCCESS;
    }
    
    public String vistaUpdate() throws Exception{
        
        aparcamiento = new Aparcamiento();
        
        listadoAparcamientos = aparcamiento.listadoCocheMatricula(getMatricula());
        setMatricula(listadoAparcamientos.get(0).getMatricula());
        setModelo(listadoAparcamientos.get(0).getModelo());
        setHoraEntrada(listadoAparcamientos.get(0).getHoraEntrada());
        setHoraSalida(listadoAparcamientos.get(0).getHoraSalida());
        setTiempoPermitido(listadoAparcamientos.get(0).getTiempoPermitido());
        
        return SUCCESS;
    }
    

    public Aparcamiento getAparcamiento() {
        return aparcamiento;
    }

    public void setAparcamiento(Aparcamiento aparcamiento) {
        this.aparcamiento = aparcamiento;
    }

    public List<Coche> getListadoAparcamientos() {
        return listadoAparcamientos;
    }

    public void setListadoAparcamientos(List<Coche> listadoAparcamientos) {
        this.listadoAparcamientos = listadoAparcamientos;
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

    public String getTipoDAO() {
        return tipoDAO;
    }

    public void setTipoDAO(String tipoDAO) {
        this.tipoDAO = tipoDAO;
    }

    public String getMatriculaOriginal() {
        return matriculaOriginal;
    }

    public void setMatriculaOriginal(String matriculaOriginal) {
        this.matriculaOriginal = matriculaOriginal;
    }
    
    
    
}
