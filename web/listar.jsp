<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : listar
    Created on : 07/05/2018, 08:26:26 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <table border="1" class="table table-striped">
            <thead>
                <tr>
                    <th colspan="4">Lista de ventas</th>                   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td>Precio</td>
                    <td>Cantidad</td>
                </tr>
            <c:forEach var="ve" items="${requestScope.listar}">            
                <tr>
                    <td>${ve.id}</td>
                    <td>${ve.nombre}</td>
                    <td>${ve.precio}</td>
                    <td>${ve.cantidad}</td>
                </tr>
            </c:forEach>  
            </tbody>
        </table>

    </body>
</html>
