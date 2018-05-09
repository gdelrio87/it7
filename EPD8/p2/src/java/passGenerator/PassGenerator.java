/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package passGenerator;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Antonio Jose Herrera Tabaco
 */
@Path("passGenerator")
public class PassGenerator {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of PassGenerator
     */
    public PassGenerator() {
    }

    /**
     * Retrieves representation of an instance of passGenerator.PassGenerator
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String getPassByTextHtml(@QueryParam("num") int num) {
        return "<h1>" + generarPass(num) + "</h1>";
    }
    
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getPassByTextPlain(@QueryParam("num") int num) {
        return generarPass(num);
    }
    
    public String generarPass(int num) {
        String pass = "";

        for (int i=0; i < num ;i++ ) {
            int randomType = (int) Math.floor(Math.random() * (3) + 1);

            switch (randomType) {
                case 1: //Minus ASCII
                    int num1min = 97;
                    int num2min = 122;

                    int randomUpperChar = (int) Math.floor(Math.random() * (num2min - num1min) + num1min);
                    pass += Character.toString( (char)randomUpperChar );
                    
                    break;
                case 2: //Mayus ASCII
                    int num1mayus = 65;
                    int num2mayus = 90;

                    int randomLowerChar = (int) Math.floor(Math.random() * (num2mayus - num1mayus) + num1mayus);
                    pass += Character.toString( (char)randomLowerChar );

                    break;
                case 3: //Num
                    int num1 = 0;
                    int num2 = 10;

                    int randomNum = (int) Math.floor(Math.random() * (num2 - num1) + num1);
                    pass += randomNum;
                    
                    break;
            }
        }

        return pass;
    }
}
