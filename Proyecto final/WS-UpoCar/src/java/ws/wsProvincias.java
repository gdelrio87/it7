/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import POJOs.HibernateUtil;
import POJOs.Provincia;
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
@WebService(serviceName = "wsProvincias")
public class wsProvincias {

    Session sesion = null;
    
    @WebMethod(operationName = "getProvincias")
    public List<Provincia> getProvincias() {
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        Query q = sesion.createQuery("from Provincia");
        List listadoProvincias = q.list();
        
        tx.commit();
        
        return listadoProvincias;
    }
}
