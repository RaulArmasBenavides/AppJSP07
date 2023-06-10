<%-- 
    Document   : menu
    Created on : 07/05/2018, 08:25:39 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
     //abrir la sesion
     HttpSession sesion=request.getSession();
     //recuperar el usuario
     String usuario=(String)sesion.getAttribute("usuario");     
    %>
    <body style="background-color: cyan">
        <h2 style="color: red">Registrar Venta</h2>
        <hr><p>Usuario : <%=usuario%></p>
        <table cellpadding="5">
            <tr>
                <td><a href="ventas.jsp" target="WORK">Registra Venta</a></td>
                <td><a href="Listar" target="WORK">Lista de Ventas</a></td>
                <td><a href="Terminar" target="WORK">Cerrar Sesion</a></td>
            </tr>
        </table>
        <iframe name="WORK" width="800" height="400"> </iframe>
    </body>
</html>
