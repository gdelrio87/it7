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
import libreria.Libro;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class LeerAccion extends ActionSupport {
    
    private List<Libro> listaLibros;


    public List<Libro> getListaLibros() {
        return listaLibros;
    }

    public void setListaLibros(List<Libro> listaLibros) {
        this.listaLibros = listaLibros;
    }    
    
    public LeerAccion() {
    }
    
    
    
    public String execute() throws Exception {
        Almacen almacen = new Almacen();        
        Map session = (Map) ActionContext.getContext().get("session");
        session.put("editoriales", almacen.consultaEditoriales());
        setListaLibros(almacen.consultaLibrosDisponibles());
        return SUCCESS;
    }

}
