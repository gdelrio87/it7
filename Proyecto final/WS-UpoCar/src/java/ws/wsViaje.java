/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import POJOs.HibernateUtil;
import POJOs.Viaje;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.hibernate.Session;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
@WebService(serviceName = "wsViaje")
public class wsViaje {

    
    Session sesion = null;
    
    @WebMethod(operationName = "crearViaje")
    public void crearViaje(@WebParam(name = "viaje") Viaje v) {
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        sesion.save(v);
        
        tx.commit();
    }
}
