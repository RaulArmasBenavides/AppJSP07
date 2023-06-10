/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uni.sistemas.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uni.sistemas.entity.Item;
import uni.sistemas.model.VentaModel;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "VentaServlet",
        urlPatterns = {"/Registrar", "/Listar", "/Terminar", "/Validar"})
public class VentaServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/Listar":
                listar(request, response);
                break;
            case "/Registrar":
                registra(request, response);
                break;
            case "/Validar":
                valida(request, response);
                break;
            case "/Terminar":
                terminar(request, response);
                break;
        }
    }

    // implementacion de metodos
    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino;
        try {
            //abrir la sesion
            HttpSession sesion = request.getSession();
            //recuperar la variable de sesion
            VentaModel venta = (VentaModel) sesion.getAttribute("carrito");
            //procesar
            request.setAttribute("listar", venta.listado());
            destino = "listar.jsp";
        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            destino = "error.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void registra(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino;
        try {
            //objeto de la clase item
            Item item = new Item();
            //asignar valores al objeto item
            item.setNombre(request.getParameter("txtnombre"));
            item.setPrecio(Double.parseDouble(request.getParameter("txtprecio")));
            item.setCantidad(Integer.parseInt(request.getParameter("txtcantidad")));
            item.setImporte(item.getPrecio() * item.getCantidad());
            //abrir la sesion
            HttpSession sesion = request.getSession();
            //leer dato de la sesion
            VentaModel venta = (VentaModel) sesion.getAttribute("carrito");
            //registrar venta
            venta.Registrar(item);
            destino = "mensaje.jsp";
            request.setAttribute("msg", "Venta registrado con exito.");

        } catch (NumberFormatException e) {
            destino = "error.jsp";
            request.setAttribute("error", e.getMessage());
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void valida(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String USUARIO = "admin@gmail.com";
        final String PASSWORD = "123456";
        //variables
        String usu = request.getParameter("txtusuario");
        String pas = request.getParameter("txtpassword");
        // validar
        if (usu.equals(USUARIO) && pas.equals(PASSWORD)) {
            //crear variable de sesion
            HttpSession sesion = request.getSession();
            //guarda usuario en al sesion
            sesion.setAttribute("usuario", usu);

            RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
            rd.forward(request, response);
            // response.sendRedirect("menu.jsp");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
            // response.sendRedirect("login.jsp");
        }
    }

    private void terminar(HttpServletRequest request, HttpServletResponse response) {
        try {
            //abrir sesion
            HttpSession sesion = request.getSession();
            sesion.invalidate();
            //sesion=null;
        } catch (Exception e) {
        }
    }
}
