/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serverREST;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Gonza
 */
@Path("contarLetras")
public class ContarLetras {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of ContarLetras
     */
    public ContarLetras() {
    }

    /**
     * Retrieves representation of an instance of serverREST.ContarLetras
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String contadorLetrasHtml(@QueryParam("cadena") String cadena) {
        return "<h1>"+ cadena + ": " + cadena.length()+"</h1>";
    }
    
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String contadorLetrasTextPlain(@QueryParam("cadena") String cadena) {
        return cadena + ": " + cadena.length();
    }

    /**
     * PUT method for updating or creating an instance of ContarLetras
     * @param content representation for the resource
     */
 
}
