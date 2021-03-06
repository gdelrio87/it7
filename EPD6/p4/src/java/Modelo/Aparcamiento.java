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

    public List<Coche> listadoCoches() throws SQLException {
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

    public List<Coche> listadoCochesCorrectos(List<Coche> listaAparcados) {

        List<Coche> listaCorrecto = new ArrayList<Coche>();
        for (int i = 0; i < listaAparcados.size(); i++) {
            if (listaAparcados.get(i).getHoraSalida() != null) {
                if (!listaAparcados.get(i).esSuperado()) {
                    listaCorrecto.add(listaAparcados.get(i));
                }
            } else {
                listaCorrecto.add(listaAparcados.get(i));
            }
        }
        return listaCorrecto;
    }

    public List<Coche> listadoCochesExcedidos(List<Coche> listaAparcados) {

        List<Coche> listaSuperados = new ArrayList<Coche>();
        for (int i = 0; i < listaAparcados.size(); i++) {
            if (listaAparcados.get(i).getHoraSalida() != null) {
                if (listaAparcados.get(i).esSuperado()) {
                    listaSuperados.add(listaAparcados.get(i));
                }
                
               
            }
        }
        return listaSuperados;
    }

    public List<Coche> listadoCochesAparcados(List<Coche> listaCoches) {

        List<Coche> listaAparcados = new ArrayList<Coche>();
        for (int i = 0; i < listaCoches.size(); i++) {
            if (listaCoches.get(i).getHoraSalida().toString().equals("00:00:00")) {
                listaAparcados.add(listaCoches.get(i));
            }
        }
        return listaAparcados;
    }

    public void insert(String matricula, String modelo, Time horaEntrada, Time horaSalida, int tiempoPermitido) throws SQLException {

        sesion = HibernateUtil.getSessionFactory().getCurrentSession();

        org.hibernate.Transaction tx = sesion.beginTransaction();
        Coche coche = new Coche();

        coche = new Coche(matricula, modelo, horaEntrada, horaSalida, tiempoPermitido);

        sesion.save(coche);

        tx.commit();

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
