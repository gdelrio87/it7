/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contarPalabras;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Gonza
 */
@WebService(serviceName = "contarPalabras")
public class contarPalabras {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "contarPalabras")
    public String hello(@WebParam(name = "numero") String txt) {
        return String.valueOf(txt.length());
    }
}
