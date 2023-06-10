
package uni.sistemas.controller;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import uni.sistemas.model.VentaModel;

/**
 * Web application lifecycle listener.
 *
 * @author Alumno
 */
public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
       //CREAR OBJETO DE LA CLASE VENTAMODEL
       VentaModel model=new VentaModel();
       //crear variable de sesion
       se.getSession().setAttribute("carrito", model);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
       
    }
}
