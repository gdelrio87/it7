/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.regex.Pattern;

/**
 *
 * @author Gonza
 */
public class loginCheck extends ActionSupport {

    private String username;
    private int edad;
    private String email;

    public loginCheck() {
    }

    public void validate() {
        if (this.username.length() == 0) {
            addFieldError("username", "El usuario no puede estar vacío");
        } else if (this.username.length() < 4) {
            addFieldError("username", "El usuario debe tener al menos 4 carácteres");
        }
        
        if(this.edad<18 || this.edad > 65){
            addFieldError("edad", "la edad debe estar entre 18 y 65");
        }
        
        String regex="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$";
        if(!Pattern.matches(regex, this.email)){
            addFieldError("email", "Email no correcto");
        }
    }

    public String execute() throws Exception {
        return SUCCESS;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
