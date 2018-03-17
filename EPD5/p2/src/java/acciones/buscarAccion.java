/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import Modelo.Aparcamiento;
import Modelo.Coche;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author Gonza
 */
public class buscarAccion extends ActionSupport {
    
    private Aparcamiento aparcamiento;
    private List<Coche> listadoAparcamientos;

    
    public buscarAccion() {
    }
    
    public String execute() throws Exception {
        aparcamiento = new Aparcamiento();
        
        listadoAparcamientos = aparcamiento.listadoCoches();
        
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
    
}
