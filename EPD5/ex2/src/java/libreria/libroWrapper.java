package libreria;

public class libroWrapper {

    private int cantidad;
    private Libro libro;

    public libroWrapper(Libro libro) {
        this.cantidad = 1;
        this.libro = libro;
    }

    public void aumentaCantidad() {
        cantidad++;
    }
    
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public boolean equals(Object obj) {
        return (this.libro.getIsbn() == ((libroWrapper)obj).libro.getIsbn());
    }
    
    
}
