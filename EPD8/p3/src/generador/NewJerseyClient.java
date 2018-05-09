/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package generador;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.WebTarget;

/**
 * Jersey REST client generated for REST resource:PassGenerator
 * [passGenerator]<br>
 * USAGE:
 * <pre>
 *        NewJerseyClient client = new NewJerseyClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class NewJerseyClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/p2/webresources";

    public NewJerseyClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("passGenerator");
    }

    public String getPassByTextPlain(String num) throws ClientErrorException {
        WebTarget resource = webTarget;
        if (num != null) {
            resource = resource.queryParam("num", num);
        }
        return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).get(String.class);
    }

    public String getPassByTextHtml(String num) throws ClientErrorException {
        WebTarget resource = webTarget;
        if (num != null) {
            resource = resource.queryParam("num", num);
        }
        return resource.request(javax.ws.rs.core.MediaType.TEXT_HTML).get(String.class);
    }

    public void close() {
        client.close();
    }
    
}
