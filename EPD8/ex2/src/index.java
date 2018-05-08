
import clienteRest.NewJerseyClient;
import static java.lang.System.out;
import java.net.URI;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

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
        NewJerseyClient client = new NewJerseyClient();
        long base = 15;
        String resultado = client.factorialTextPlain(String.valueOf(base));
        out.println("Base: " + base);
        out.println("Resultado: " + resultado);
    }

}
