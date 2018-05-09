/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3;
import generador.NewJerseyClient;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class P3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        NewJerseyClient cliente = new NewJerseyClient();
        int pass1 = 5;
        int pass2 = 10;
        
        String generatorPass1 = cliente.getPassByTextPlain(String.valueOf(pass1));
        String generatorPass2 = cliente.getPassByTextPlain(String.valueOf(pass2));
        System.out.println("Password con 5 caracteres: " + generatorPass1 + "\n");
        System.out.println("Password con 10 caracteres: " + generatorPass2 + "\n");
    }
    
}
