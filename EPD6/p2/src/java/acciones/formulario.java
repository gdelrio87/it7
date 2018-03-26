/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;

/**
 *
 * @author Gonza
 */
public class formulario extends ActionSupport {
    
    private Date fecha;
    private Double ingresos;
    private String e_mail;
    private Integer edad;
    private String nombre;
    private String page;
    
    public formulario() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Double getIngresos() {
        return ingresos;
    }

    public void setIngresos(Double ingresos) {
        this.ingresos = ingresos;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }
    
    
    
}
