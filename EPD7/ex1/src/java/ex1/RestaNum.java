/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex1;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Gonza
 */
@WebService(serviceName = "RestaNum")
public class RestaNum {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "resta")
    public Integer hello(@WebParam(name = "num1") int num1,@WebParam(name = "num2") int num2) {
        return num1-num2;
    }
}
