<%-- 
    Document   : login
    Created on : 07/05/2018, 08:25:52 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>      
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <center>
        <form action="Validar" method="POST">
            </br>
            </br>
            <table class="table table-bordered" style="width: 30%">
                <thead>
                    <tr>                                     
                        <th colspan="3" style="text-align: center">Acceso al Sistema</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="3"><img src="imagen/login.jpg" width="80" height="100" alt="login"/>
                        </td>
                        <td>Usuario</td>
                        <td><input type="text" name="txtusuario" placeholder="usuario" class="form-control" value="" /></td>
                    </tr>
                    <tr>                       
                        <td>Password</td>
                        <td><input type="password" name="txtpassword" placeholder="password" class="form-control" value="" /></td>
                    </tr>
                    <tr>                       
                        <td colspan="2" align="center"><input type="submit" class="btn btn-primary" value="Aceptar" /></td>                       
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</center>
</body>
</html>
