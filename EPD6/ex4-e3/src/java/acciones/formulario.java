/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

/**
 *
 * @author Gonza
 */
public class formulario extends ActionSupport {
    
    private String usuario;
    private int edad;
    private String correo;
    
    public formulario() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String getUsuario() {
        return usuario;
    }

    @RequiredStringValidator(key = "username.required")
    @StringLengthFieldValidator(minLength = "4",key = "username.length")
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public int getEdad() {
        return edad;
    }

    @IntRangeFieldValidator(min="18",max="65",key = "edad.valors")
    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getCorreo() {
        return correo;
    }

    @EmailValidator(key = "email.correct")
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
}
