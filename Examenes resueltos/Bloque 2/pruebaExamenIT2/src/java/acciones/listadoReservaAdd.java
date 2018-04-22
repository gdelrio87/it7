/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import reserva.ReservaDAO;
import reserva.Reservaanimales;
import reserva.Tipoanimal;

/**
 *
 * @author Gonza
 */
public class listadoReservaAdd extends ActionSupport {
    
    List<Reservaanimales> listaAnimales;
    List<Tipoanimal> listaTipoAnimales;
    String identificador;
    String tipoAnimal;
    String pais;
    int precio; 
    String email;
    
    public listadoReservaAdd() {
    }
    
    public String execute() throws Exception {
           
        ReservaDAO reserva = new ReservaDAO();
        Reservaanimales r = new Reservaanimales(getIdentificador(), getTipoAnimal(), getPais(), getPrecio(), getEmail());
        reserva.addAnimal(r);
        listaAnimales = reserva.listadoAnimales();
        listaTipoAnimales = reserva.listadoTipoAnimal();
 
        return SUCCESS;
    
    }

    public List<Reservaanimales> getListaAnimales() {
        return listaAnimales;
    }

    public void setListaAnimales(List<Reservaanimales> listaAnimales) {
        this.listaAnimales = listaAnimales;
    }

    public List<Tipoanimal> getListaTipoAnimales() {
        return listaTipoAnimales;
    }

    public void setListaTipoAnimales(List<Tipoanimal> listaTipoAnimales) {
        this.listaTipoAnimales = listaTipoAnimales;
    }

    public String getIdentificador() {
        return identificador;
    }

    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }

    public String getTipoAnimal() {
        return tipoAnimal;
    }

    public void setTipoAnimal(String tipoAnimal) {
        this.tipoAnimal = tipoAnimal;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
}
