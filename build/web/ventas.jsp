<%-- 
    Document   : ventas
    Created on : 07/05/2018, 08:26:09 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Registrar" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Datos Producto</th>                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txtnombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="txtprecio" value="" /></td>
                    </tr>
                    <tr>
                        <td>Cantidad</td>
                        <td><input type="text" name="txtcantidad" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Registrar Venta" class="btn btn-primary" /></td>
                        <td><input type="reset" value="Limpiar" /></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>  
    </body>
</html>
