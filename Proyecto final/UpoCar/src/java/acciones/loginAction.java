/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.UsuarioDAO;
import webServiceREST.entidades.Usuario;

/**
 *
 * @author Gonza
 */
public class loginAction extends ActionSupport {

    private String usuario;
    private String password;
    UsuarioDAO dao = new UsuarioDAO();

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

    public String toLogin() {
        return SUCCESS;
    }

    public String toRegistro() {
        return SUCCESS;
    }

    public String login() {
        Usuario u = dao.login(usuario, password);

        if (u == null) {
            return ERROR;
        } else {
            Map sesion = (Map) ActionContext.getContext().get("session");
            sesion.put("usuario", u);

            return SUCCESS;
        }

    }

}
