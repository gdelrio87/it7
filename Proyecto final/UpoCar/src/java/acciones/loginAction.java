/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Gonza
 */
public class loginAction extends ActionSupport {
    
    public loginAction() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    public String toLogin(){
        return SUCCESS;
    }
    
}
