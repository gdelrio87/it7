package accion;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import libreria.Almacen;
import libreria.Libro;

public class ComprarLibro extends ActionSupport {

    private String isbn;
    private Almacen almacen;

    public ComprarLibro() {
    }
    
     public String comprarLibros() throws Exception {
        return "comprar";
    }

    public String execute() throws Exception {
        almacen = new Almacen();
        Libro libro = almacen.consultaLibro(Integer.parseInt(isbn));
        Map session = (Map) ActionContext.getContext().get("session");
        List<Libro> carrito = (List<Libro>) session.get("carrito");
        List<String> listaIsbns = (List<String>) session.get("isbns");
        if (carrito == null) {
            carrito = new ArrayList<>();
        }
        if (listaIsbns == null) {
            listaIsbns = new ArrayList<String>(10);
        }
        listaIsbns.add(isbn);

        carrito = almacen.consultaListaLibrosSolicitados(listaIsbns);
        session.put("carrito", carrito);
        session.put("isbns", listaIsbns);
        return SUCCESS;
    }
    
    

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Almacen getAlmacen() {
        return almacen;
    }

    public void setAlmacen(Almacen almacen) {
        this.almacen = almacen;
    }

}
