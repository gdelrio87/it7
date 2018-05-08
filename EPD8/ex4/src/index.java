
import clientREST.JerseyClient;
import entidades.Profesor;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.ws.rs.core.GenericType;
import org.glassfish.jersey.client.ClientResponse;

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
        JerseyClient cliente = new JerseyClient();
        GenericType<List<Profesor>> genericType = new GenericType<List<Profesor>>() {
        };

        List<Profesor> listaProfesores = new ArrayList<Profesor>();
        //GET
        listaProfesores = (List<Profesor>) cliente.findAll_XML(genericType);

        Iterator<Profesor> it = listaProfesores.iterator();

        while (it.hasNext()) {
            Profesor p = it.next();
            System.out.println(p.getDni());
            System.out.println(p.getNombre());
            System.out.println(p.getApellidos());
            System.out.println(p.getFechaAlta());
            System.out.println(p.getDepartamento());
        }

        //POST
        Profesor p1 = new Profesor("282828", "Gonzalo", "del Río", new Date(2005, 05, 05), "Programacion");
        cliente.create_XML(p1);

        //UPDATE
        GenericType<Profesor> genericTypeProfesor = new GenericType<Profesor>() {
        };
        Profesor p2 = cliente.find_XML(genericTypeProfesor, "282828");

        System.out.println(p2.getDni());
        System.out.println(p2.getNombre());
        System.out.println(p2.getApellidos());
        System.out.println(p2.getFechaAlta());
        System.out.println(p2.getDepartamento());

        p2.setNombre("Gonzalito");

        cliente.edit_XML(p2, p2.getDni());

        //delete
        cliente.remove(p2.getDni());

    }

}
