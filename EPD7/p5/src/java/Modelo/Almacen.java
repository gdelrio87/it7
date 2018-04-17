/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

/**
 * 
 * @author Antonio Jose Herrera Tabaco 
 */
public class Almacen {    
    
    public static java.util.List<libros.Libro> consultaLibrosDisponibles() {
        libros.Almacen_Service service = new libros.Almacen_Service();
        libros.Almacen port = service.getAlmacenPort();
        return port.consultaLibrosDisponibles();
    }

}
