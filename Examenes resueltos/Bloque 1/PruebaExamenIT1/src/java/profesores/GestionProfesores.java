/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package profesores;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 * 
 * @author Antonio Jose Herrera Tabaco 
 */
public class GestionProfesores {

    Session session = null;
    
    public GestionProfesores() {
    }
    
    public List<Profesor> listadoProfesores(){                
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        Query consulta = session.createQuery("from Profesor");
        List listadoProfesores = (List<Profesor>)consulta.list();
        tx.commit();
        
        return listadoProfesores;
    }
    
    public List<Profesor> listadoNuevosProfesores() throws ParseException{
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        Query consulta = session.createQuery("from Profesor where fechaAlta >= '2016-01-01'");
        List listadoProfesores = (List<Profesor>)consulta.list();
        
        tx.commit();
        
        return listadoProfesores;
    }
    
    public Profesor obtenerProfesor(String dni){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        Query consulta = session.createQuery("from Profesor where dni ='"+ dni+ "'");
        List lista = (List<Profesor>)consulta.list();
        Profesor p = (Profesor)lista.get(0);
        
        return p;
    }
    
    public void nuevoProfesor(Profesor p){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        session.save(p);
        tx.commit();        
    }
    
    public void update(String dni, String nombre, String apellidos, String departamento){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        Query consulta = session.createQuery("update Profesor set nombre= '"+ nombre +"', apellidos = '"+ apellidos +"', departamento = '"+ departamento +"' where dni = '"+ dni +"'");
        consulta.executeUpdate();
        tx.commit();
    }
    
    public void delete(String dni){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        Query consulta = session.createQuery("delete from Profesor where dni = '"+ dni +"'");
        consulta.executeUpdate();
        tx.commit();
    }
}
