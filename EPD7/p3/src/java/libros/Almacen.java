/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libros;

import java.sql.SQLException;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import libros.Libro;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
@WebService(serviceName = "Almacen")
public class Almacen {

    Session session = null;

    @WebMethod(operationName = "consultaLibrosDisponibles")
    public List<Libro> consultaLibrosDisponibles() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
        Query q = session.createQuery("from Libro");
        List resultados = (List<Libro>) q.list();

        tx.commit();
        return resultados;
    }

}
