package accion;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import libreria.Almacen;
import libreria.Libro;

public class CogerLibros extends ActionSupport{

    private List<Libro> libros;
    private Almacen almacen;

    public CogerLibros() {
    }

    public String execute() throws Exception {
        almacen = new Almacen();
        libros = almacen.consultaLibrosDisponibles();
        return SUCCESS;
    }

    public List<Libro> getLibros() {
        return libros;
    }

    public void setLibros(List<Libro> libros) {
        this.libros = libros;
    }

    
}
