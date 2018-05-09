/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class index {
    
    public static void main(String[] args) {
        System.out.println( "Contraseña de 15 caracteres: " + generarPass(15) );
        System.out.println( "Contraseña de 20 caracteres: " + generarPass(20) );
    }

    private static String generarPass(int numero) {
        ej1.GenerarPass_Service service = new ej1.GenerarPass_Service();
        ej1.GenerarPass port = service.getGenerarPassPort();
        return port.generarPass(numero);
    }
    
}
