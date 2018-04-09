/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex5;

import java.util.Scanner;

/**
 *
 * @author Gonza
 */
public class Ex5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Introduzca num1:");
        int num1 = s.nextInt();
        System.out.println("Introduzca el tipo de operación:");
        String tipo = s.next();
        System.out.println("Introduzca num2:");
        int num2 = s.nextInt();

        System.out.println(calculadora(num1, num2, tipo));
    }

    private static double calculadora(int num1, int num2, java.lang.String tipo) {
        ex4.Calculadora_Service service = new ex4.Calculadora_Service();
        ex4.Calculadora port = service.getCalculadoraPort();
        return port.calculadora(num1, num2, tipo);
    }
    
}
