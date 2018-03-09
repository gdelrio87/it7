/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.SQLException;
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

    public List<Coche> listadoCoches() throws SQLException{
        List<Coche> listaCoches = new ArrayList<Coche>();

        sesion = HibernateUtil.getSessionFactory().getCurrentSession();

        org.hibernate.Transaction tx = sesion.beginTransaction();

        Query q = sesion.createQuery("from Coche");

        listaCoches = (List<Coche>) q.list();

        tx.commit();

        return listaCoches;
    }

    public List<Coche> listadoCocheMatricula(String matricula) throws SQLException {
        List<Coche> listaCoches = new ArrayList<Coche>();

        sesion = HibernateUtil.getSessionFactory().getCurrentSession();

        org.hibernate.Transaction tx = sesion.beginTransaction();

        Query q = sesion.createQuery("from Coche where matricula like '" + matricula + "%'");

        listaCoches = (List<Coche>) q.list();

        tx.commit();

        return listaCoches;
    }

    public int update(String matricula, String modelo, Time horaEntrada, Time horaSalida, int tiempoPermitido, String matriculaOriginal) throws SQLException {

        sesion = HibernateUtil.getSessionFactory().getCurrentSession();

        org.hibernate.Transaction tx = sesion.beginTransaction();

        String sql = "update Coche set matricula = '" + matricula + "',"
                + " modelo = '" + modelo + "', horaEntrada = '" + horaEntrada + "',"
                + " horaSalida = '" + horaSalida + "', tiempoPermitido = '" + tiempoPermitido + "' where matricula = '" + matriculaOriginal + "'";

        Query q = sesion.createQuery(sql);
        
        int numAffected = q.executeUpdate();

        tx.commit();
        
        return numAffected;
    }

    public void insert(String matricula, String modelo, Time horaEntrada, Time horaSalida, int tiempoPermitido) throws SQLException {

        sesion = HibernateUtil.getSessionFactory().getCurrentSession();

        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        Coche coche = new Coche(matricula,modelo, horaEntrada, horaSalida, tiempoPermitido);
        
        sesion.save(coche);

        tx.commit();
        
    }

    public int delete(String matricula) throws SQLException {

        sesion = HibernateUtil.getSessionFactory().getCurrentSession();

        org.hibernate.Transaction tx = sesion.beginTransaction();

        String sql = "delete from Coche where matricula = '" + matricula + "'";

        Query q = sesion.createQuery(sql);
        
        int numAffected = q.executeUpdate();

        tx.commit();
        
        return numAffected;
    }
}
