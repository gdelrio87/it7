/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import POJOs.HibernateUtil;
import POJOs.Localidad;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
@WebService(serviceName = "wsLocalidades")
public class wsLocalidades {

    Session sesion = null;
    
    @WebMethod(operationName = "getLocalidades")
    public List<Localidad> hello() {
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        Query q = sesion.createQuery("from Localidad");
        List listadoLocalidades = q.list();
        
        tx.commit();
        
        return listadoLocalidades;
    }
}
