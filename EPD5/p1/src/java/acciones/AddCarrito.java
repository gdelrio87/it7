/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import libreria.Almacen;
import libreria.Libro;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class AddCarrito extends ActionSupport {

    private int isbn;
    private Almacen almacen;

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }
    
    public AddCarrito() {
    }
    
    public String comprar() throws Exception {
        return SUCCESS;
    }

    public String execute() throws Exception {        
        almacen = new Almacen();
        Map session = (Map) ActionContext.getContext().get("session");
        List<Libro> carrito = (List<Libro>) session.get("carrito");
        List<String> listaIsbns = (List<String>) session.get("isbns");        
        
        if(carrito == null){
            carrito = new ArrayList<>();
        }
        
        if(listaIsbns == null){
            listaIsbns = new ArrayList<>();
        }
        
        listaIsbns.add(String.valueOf(isbn));
        
        carrito = almacen.consultaListaLibrosSolicitados(listaIsbns);       
        session.put("carrito", carrito);
        session.put("isbns", listaIsbns);
        
        return SUCCESS;
    }

}
