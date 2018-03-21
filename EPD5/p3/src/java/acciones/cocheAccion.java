/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import Modelo.Aparcamiento;
import Modelo.Coche;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Gonza
 */
public class cocheAccion extends ActionSupport {

    private Aparcamiento aparcamiento;
    private String matriculaBuscar;
    private List<Coche> listadoAparcamientos;

    public cocheAccion() {
    }

    public String cochesCorrectos() throws SQLException {

        aparcamiento = new Aparcamiento();

        List<Coche> listaAparcados = aparcamiento.listadoCoches();

        List<Coche> listaCorrecto = aparcamiento.listadoCochesCorrectos(listaAparcados);

        setListadoAparcamientos(listaCorrecto);

        return SUCCESS;
    }

    public String cochesExcedidos() throws SQLException {

        aparcamiento = new Aparcamiento();

        List<Coche> listaAparcados = aparcamiento.listadoCoches();

        List<Coche> listaExcedidos = aparcamiento.listadoCochesExcedidos(listaAparcados);

        setListadoAparcamientos(listaExcedidos);

        return SUCCESS;
    }

    public String buscarCocheMatricula() throws SQLException {

        aparcamiento = new Aparcamiento();

        List<Coche> listaMatriculas = aparcamiento.listadoCocheMatricula(getMatriculaBuscar());

        setListadoAparcamientos(listaMatriculas);

        return SUCCESS;
    }

    public String buscarCocheAparcado() throws SQLException {

        aparcamiento = new Aparcamiento();

        List<Coche> listaCoches = aparcamiento.listadoCoches();

        List<Coche> listaAparcados = aparcamiento.listadoCochesAparcados(listaCoches);

        setListadoAparcamientos(listaAparcados);

        return SUCCESS;
    }
    
    public String administrador() throws Exception {
        aparcamiento = new Aparcamiento();

        setListadoAparcamientos(aparcamiento.listadoCoches());

        return SUCCESS;
    }

    public String execute() throws Exception {
        aparcamiento = new Aparcamiento();

        setListadoAparcamientos(aparcamiento.listadoCoches());

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

    public String getMatriculaBuscar() {
        return matriculaBuscar;
    }

    public void setMatriculaBuscar(String matriculaBuscar) {
        this.matriculaBuscar = matriculaBuscar;
    }

}
