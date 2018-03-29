/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import Modelo.Aparcamiento;
import Modelo.Coche;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.ConversionErrorFieldValidator;
import com.opensymphony.xwork2.validator.annotations.FieldExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
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

    @RequiredStringValidator(key="matricula.requiredstring")
    @StringLengthFieldValidator(minLength = "8",maxLength = "8",key="matricula.stringlength")
    @RegexFieldValidator(regex = "[0-9]{5}[A-Z]{3}",key="matricula.regex")
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getModelo() {
        return modelo;
    }

    @RequiredStringValidator(key="modelo.requiredstring")
    @StringLengthFieldValidator(minLength = "1",key="modelo.stringlength")
    @ConversionErrorFieldValidator(key="modelo.conversion")
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    
    public Time getHoraEntrada() {
        return horaEntrada;
    }

    @RequiredFieldValidator(key="horaEntrada.required")
    @RegexFieldValidator(regex = "(([0-2][0-3])|([0-1][0-9])):[0-5][0-9]:00",key="horaEntrada.range")
    public void setHoraEntrada(Time horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public Time getHoraSalida() {
        return horaSalida;
    }

    @RequiredFieldValidator(key="horaSalida.required")
    @RegexFieldValidator(regex = "(([0-2][0-3])|([0-1][0-9])):[0-5][0-9]:00",key="horaSalida.range")
    public void setHoraSalida(Time horaSalida) {
        this.horaSalida = horaSalida;
    }

    public int getTiempoPermitido() {
        return tiempoPermitido;
    }

    @RequiredFieldValidator(key="tiempoPermitido.required")
    @ConversionErrorFieldValidator(key="tiempoPermitido.conversion")
    @IntRangeFieldValidator(min = "0",max="1440",key = "tiempoPermitido.range")
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
