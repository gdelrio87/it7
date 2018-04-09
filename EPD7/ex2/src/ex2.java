
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Gonza
 */
public class ex2 {

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Introduzca num1:");

        int num1 = s.nextInt();
        System.out.println("Introduzca num2:");
        int num2 = s.nextInt();

        System.out.println("Resta: " + resta(num1, num2));

    }

    private static Integer resta(int num1, int num2) {
        ex1.RestaNum_Service service = new ex1.RestaNum_Service();
        ex1.RestaNum port = service.getRestaNumPort();
        return port.resta(num1, num2);
    }

}
