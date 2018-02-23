/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

import java.sql.Time;

/**
 * 
 * @author Grupo 7 IT
 */
public class Coche {
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
