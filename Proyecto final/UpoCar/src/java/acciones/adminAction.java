/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import modelo.MensajeDAO;
import modelo.UsuarioDAO;
import modelo.ViajeDAO;
import webServiceREST.entidades.Mensaje;
import webServiceREST.entidades.Usuario;
import webServiceREST.entidades.Viaje;

/**
 *
 * @author Gonza
 */
public class adminAction extends ActionSupport {
    
    List<Mensaje> listadoMensajes;
    List<Usuario> listadoUsuarios;
    List<Viaje> listadoViajes;
    
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
    
    public String toGestionUsuarios() throws Exception {
        UsuarioDAO mensajeDAO = new UsuarioDAO();
        this.setListadoUsuarios(mensajeDAO.listarUsuarios());
        return SUCCESS;
    }
    
    public String toGestionViajes() throws Exception {
        ViajeDAO mensajeDAO = new ViajeDAO();
        this.setListadoViajes(mensajeDAO.listarViajes());
        return SUCCESS;
    }

    public List<Mensaje> getListadoMensajes() {
        return listadoMensajes;
    }

    public void setListadoMensajes(List<Mensaje> listadoMensajes) {
        this.listadoMensajes = listadoMensajes;
    }

    public List<Usuario> getListadoUsuarios() {
        return listadoUsuarios;
    }

    public void setListadoUsuarios(List<Usuario> listadoUsuarios) {
        this.listadoUsuarios = listadoUsuarios;
    }

    public List<Viaje> getListadoViajes() {
        return listadoViajes;
    }

    public void setListadoViajes(List<Viaje> listadoViajes) {
        this.listadoViajes = listadoViajes;
    }
    
    
    
}
