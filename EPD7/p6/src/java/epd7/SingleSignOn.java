/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package epd7;

import java.util.ArrayList;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Gonza
 */
@WebService(serviceName = "SingleSignOn")
public class SingleSignOn {

    List<Usuario> listaAutenticados = new ArrayList<>();

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "login")
    public long login(@WebParam(name = "usuario") String usuario,
            @WebParam(name = "password") String password) {
        long token = System.currentTimeMillis();
        Usuario user = new Usuario(usuario, password, token);
        boolean insertado = false;

        for (int i = 0; i < listaAutenticados.size(); i++) {
            if (listaAutenticados.get(i).getUsuario().equals("usuario")
                    && listaAutenticados.get(i).getUsuario().equals("password")) {
                token = listaAutenticados.get(i).getToken();
                insertado = true;
            }
        }
        
        if(!insertado){
            listaAutenticados.add(user);
        }

        return token;
    }

    @WebMethod(operationName = "logout")
    public boolean logout(@WebParam(name = "token") long token) {
        boolean eliminado = false;
        for (int i = 0; i < listaAutenticados.size(); i++) {
            if (listaAutenticados.get(i).getToken() == token) {
                listaAutenticados.remove(i);
                eliminado = true;
            }
        }
        return eliminado;
    }

    @WebMethod(operationName = "isAlive")
    public boolean isAlive(@WebParam(name = "token") long token) {
        boolean encontrado = false;
        for (int i = 0; i < listaAutenticados.size(); i++) {
            if (listaAutenticados.get(i).getToken() == token) {
                encontrado = true;
            }
        }
        return encontrado;
    }

    @WebMethod(operationName = "usersRegistered")
    public List<Usuario> usersRegistered() {
        return listaAutenticados;
    }

}
