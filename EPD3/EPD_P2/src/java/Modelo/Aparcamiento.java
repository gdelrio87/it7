/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Grupo 7 IT
 */
public class Aparcamiento {

    public static List<Coche> listadoCoches() {
        List<Coche> listaCoches = new ArrayList<Coche>();

        Coche coche1 = new Coche("12784HIH", "BMW", new Time(10,05,0), null, 30);
        listaCoches.add(coche1);

        Coche coche2 = new Coche("76234AAC", "Toyota", new Time(10,07,0), new Time(10,35,0), 30);
        listaCoches.add(coche2);

        Coche coche3 = new Coche("32162BAQ", "Audi", new Time(10,45,0), null, 90);
        listaCoches.add(coche3);

        Coche coche4 = new Coche("87823CDA", "Mercedes", new Time(10,46,0),new Time(11,05,0) , 15);
        listaCoches.add(coche4);

        return listaCoches;
    }
}
