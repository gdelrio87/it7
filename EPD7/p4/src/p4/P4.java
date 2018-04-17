/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p4;

import libros.Libro;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class P4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        for (Libro l : consultaLibrosDisponibles()) {
            System.out.println(l.getTitulo()+"\n");
        }
        
    }

    private static java.util.List<libros.Libro> consultaLibrosDisponibles() {
        libros.Almacen_Service service = new libros.Almacen_Service();
        libros.Almacen port = service.getAlmacenPort();
        return port.consultaLibrosDisponibles();
    }
    
}
