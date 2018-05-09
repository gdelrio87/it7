/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clienteRest;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.WebTarget;

/**
 * Jersey REST client generated for REST resource:ContarLetras
 * [contarLetras]<br>
 * USAGE:
 * <pre>
 *        JerseyClient client = new JerseyClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author Gonza
 */
public class JerseyClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/ej1/webresources";

    public JerseyClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("contarLetras");
    }

    public String contadorLetrasHtml(String cadena) throws ClientErrorException {
        WebTarget resource = webTarget;
        if (cadena != null) {
            resource = resource.queryParam("cadena", cadena);
        }
        return resource.request(javax.ws.rs.core.MediaType.TEXT_HTML).get(String.class);
    }

    public String contadorLetrasTextPlain(String cadena) throws ClientErrorException {
        WebTarget resource = webTarget;
        if (cadena != null) {
            resource = resource.queryParam("cadena", cadena);
        }
        return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).get(String.class);
    }

    public void close() {
        client.close();
    }
    
}
