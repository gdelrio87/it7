/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import modelo.MensajeDAO;
import webServiceREST.entidades.Mensaje;

/**
 *
 * @author Gonza
 */
public class adminAction extends ActionSupport {
    
    List<Mensaje> listadoMensajes;
    
    public adminAction() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    public String toGestionMensajes() throws Exception {
        MensajeDAO mensajeDAO = new MensajeDAO();
        this.setListadoMensajes(mensajeDAO.listarMensajes());
        return SUCCESS;
    }

    public List<Mensaje> getListadoMensajes() {
        return listadoMensajes;
    }

    public void setListadoMensajes(List<Mensaje> listadoMensajes) {
        this.listadoMensajes = listadoMensajes;
    }
    
    
    
}
