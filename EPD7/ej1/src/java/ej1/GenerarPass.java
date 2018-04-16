/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej1;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;


@WebService(serviceName = "GenerarPass")
public class GenerarPass {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "generarPass")
    public String generarPass(@WebParam(name = "numero") int num) {
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
