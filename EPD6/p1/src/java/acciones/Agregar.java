/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import libreria.Almacen;
import libreria.Editorial;
import libreria.Libro;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class Agregar extends ActionSupport {
    Almacen almacen = new Almacen();
    private String autor;
    private String titulo;
    private float precio;
    private int isbn;
    private List<Editorial> listaEditoriales;
    private int editorial;

    public int getEditorial() {
        return editorial;
    }

    public void setEditorial(int editorial) {
        this.editorial = editorial;
    }    

    public List<Editorial> getListaEditoriales() {
        return listaEditoriales;
    }

    public void setListaEditoriales(List<Editorial> listaEditoriales) {
        this.listaEditoriales = listaEditoriales;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public Agregar() {
    }
    
    public String execute() throws Exception {        
        setListaEditoriales(almacen.consultaEditoriales());
        return SUCCESS;
    }
    
    public String nuevoLibro() throws Exception{
        setListaEditoriales(almacen.consultaEditoriales());
        almacen.agregar(almacen.obtenerEditorial(getEditorial()), getAutor(), getTitulo(), getPrecio(), getIsbn());
        Map session = (Map) ActionContext.getContext().get("session");
        session.put("libros", almacen.consultaLibrosDisponibles());
        return SUCCESS;
    }    

    public void validate(){
        if(this.autor.length() == 0){
            addFieldError("autor", "El autor no puede estar vacio");
        }
        
        if(this.titulo.length() == 0){
            addFieldError("titulo", "El titulo no puede estar vacio");
        }
        
        if(this.precio == 0.0f){
            addFieldError("precio", "El precio no puede estar vacio");
        }
        
        if(this.isbn == 0){
            addFieldError("isbn", "El isbn no puede estar vacio");
        }
    }
}
