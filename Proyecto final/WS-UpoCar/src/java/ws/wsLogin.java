/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import POJOs.HibernateUtil;
import POJOs.Usuario;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Antonio Jose Herrera Tabaco
 */
@WebService(serviceName = "wsLogin")
public class wsLogin {

    Session sesion = null;
    
    @WebMethod(operationName = "login")
    public Usuario login(@WebParam(name = "usuario") String usuario, @WebParam(name = "password") String password) {
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = sesion.beginTransaction();
        
        Query q = sesion.createQuery("from Usuario where nomUsuario = '" + usuario + "' and password = '" + password + "'");
        Usuario u = null;
        if (q.uniqueResult() != null) {
            u = (Usuario) q.list().get(0);
        }

        tx.commit();
        return u;
    }
}
