/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
public class Aparcamiento {
    
    Session sesion = null;

    public List<Coche> listadoCoches() {
        List<Coche> listaCoches = new ArrayList<Coche>();
        
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        
        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        Query q = sesion.createQuery("from Coche");
        
        listaCoches = (List<Coche>)q.list();
        
        tx.commit();

        return listaCoches;
    }
    
    public List<Coche> listadoCocheMatricula(String matricula) {
        List<Coche> listaCoches = new ArrayList<Coche>();
        
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        
        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        Query q = sesion.createQuery("from Coche where matricula like '"+matricula+"%'");
        
        listaCoches = (List<Coche>)q.list();
        
        tx.commit();

        return listaCoches;
    }
}
