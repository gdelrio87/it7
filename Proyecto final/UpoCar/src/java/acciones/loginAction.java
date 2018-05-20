/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Gonza
 */
public class loginAction extends ActionSupport {
    
    private String usuario;
    private String password;

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }    
    
    public loginAction() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    public String toLogin(){
        return SUCCESS;
    }
    
    public String toRegistro(){
        return SUCCESS;
    }
    
    public String login(){
        
        return SUCCESS;
    }
    
}
