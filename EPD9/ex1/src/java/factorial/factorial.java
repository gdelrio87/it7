/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package factorial;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Gonza
 */
@WebService(serviceName = "factorial")
public class factorial {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "numFactorial")
    public Long factorial(@WebParam(name = "numero") Long num) {
        return factorialLong(num);
    }
    
    public static long factorialLong(long base) {
        long resultado;
        if (base >= 1) {
            resultado = factorialLong(base - 1) * base;
        } else {
            resultado = 1;
        }
        return resultado;
    }
}
