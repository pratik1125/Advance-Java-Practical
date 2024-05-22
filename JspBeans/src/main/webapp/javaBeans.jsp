<%-- 
    Document   : javaBeans
    Created on : 21-May-2024, 11:37:49 am
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="edu.somaiya.mca.User"%>
<jsp:useBean id="User" class="edu.somaiya.mca.User" scope="session"/>
<jsp:setProperty name="User" property="name" value="Pratik" />
<jsp:setProperty name="User" property="email" value="Pratik@gmail.com"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <p> Username: <jsp:getProperty name="User" property="name"/></p>
    	<p> Email: <jsp:getProperty name="User" property="email"/></p>
    </body>
</html>
