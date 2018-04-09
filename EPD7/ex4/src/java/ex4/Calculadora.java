/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex4;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Gonza
 */
@WebService(serviceName = "Calculadora")
public class Calculadora {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "calculadora")
    public double calculadora(@WebParam(name = "num1") int num1, @WebParam(name = "num2") int num2,
            @WebParam(name = "tipo") String tipo) {
        double result = 0;
        
        switch(tipo){
            case "+":
                result = num1+ num2;
                break;
            case "-":
                result = num1- num2;
                break;
            case "/":
                result = num1/ num2;
                break;
            case "*":
                result = num1* num2;
                break;
        
            
        }
        return result;
    }
}
