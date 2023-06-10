<%-- 
    Document   : error
    Created on : 07/05/2018, 08:26:47 AM
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
        <h1 style="color: red;">ERROR</h1>
	<p>${requestScope.error}</p>
    </body>
</html>
