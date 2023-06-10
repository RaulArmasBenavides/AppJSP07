<%-- 
    Document   : mensaje
    Created on : 07/05/2018, 08:26:37 AM
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
       <h1 style="color: blue;">Mensaje</h1>
	<p>${requestScope.msg}</p>
    </body>
</html>
