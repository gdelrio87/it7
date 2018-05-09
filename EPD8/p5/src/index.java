
import clientREST.JerseyClientLibros;
import entidades.Libro;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.core.GenericType;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Gonza
 */
public class index {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        JerseyClientLibros clientLibros = new JerseyClientLibros();
        GenericType<List<Libro>> genericType = new GenericType<List<Libro>>(){};
        List<Libro> listaLibros = new ArrayList<>();
        
        listaLibros = (List<Libro>) clientLibros.findAll_XML(genericType);
        
        for (Libro l:listaLibros) {
            System.out.println(l);
        }
        
    }
    
}
