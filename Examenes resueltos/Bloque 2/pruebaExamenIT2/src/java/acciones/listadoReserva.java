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
public class listadoReserva extends ActionSupport {
    
    List<Reservaanimales> listaAnimales;
    List<Tipoanimal> listaTipoAnimales;
    String animal;
    Integer id;
    
    String identificador;
    String tipoAnimal;
    String pais;
    int precio; 
    String email;
    
    public listadoReserva() {
    }
    
    public String execute() throws Exception {
        ReservaDAO reserva = new ReservaDAO();

        listaAnimales = reserva.listadoAnimales();
        
        listaTipoAnimales = reserva.listadoTipoAnimal();
 
        return SUCCESS;
    }
    
    public String filtroAnimal() throws Exception {
        ReservaDAO reserva = new ReservaDAO();

       
        listaAnimales = reserva.listadoAnimalesFiltro(getAnimal());
        listaTipoAnimales = reserva.listadoTipoAnimal();
 
        return SUCCESS;
    }
    
    public String borrarAnimal() throws Exception {
        ReservaDAO reserva = new ReservaDAO();
        reserva.deleteAnimal(getId());
        listaAnimales = reserva.listadoAnimales();
        listaTipoAnimales = reserva.listadoTipoAnimal();
 
        return SUCCESS;
    }
    
 
    
    public String addVista() throws Exception {
        
         ReservaDAO reserva = new ReservaDAO();

  
        
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

    public String getAnimal() {
        return animal;
    }

    public void setAnimal(String animal) {
        this.animal = animal;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
