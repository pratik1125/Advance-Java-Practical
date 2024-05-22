<%-- 
    Document   : DemoError
    Created on : 18-May-2024, 11:04:40 am
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="myerrorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Demo ! </title>
    </head>
    <body>
        <h1>Welcome To Error Page Demo!</h1>
            <% 
        // Simulating an error
        int numerator = 10;
        int denominator = 0;
        int result = numerator / denominator;
    %>
   
    <p>This line will not be executed due to the error.</p>
    </body>
</html>
