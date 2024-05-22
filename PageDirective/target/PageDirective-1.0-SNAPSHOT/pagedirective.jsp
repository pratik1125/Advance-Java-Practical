<%-- 
    Document   : pagedirective
    Created on : 18-May-2024, 10:17:36 am
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%-- 2.Content Type --%>
<%@page import="java.util.Date" %>  <%-- 1.Import --%>
<%@ page buffer="16kb" %>  <%-- 4.Buffer --%> <%-- Default Buffer is 8kb --%>
<%@ page isELIgnored="true" %><%-- 5.ExpressionLanguage Ignored --%>
<%@ page errorPage="errorpage.jsp" %><%-- 6.ErrorPage --%>
<%-- 7.isErrorPage=True (in errorpage.jsp) --%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Today is: <%= new Date() %>  
        <%@ page info="composed by Pratik Sawant" %>  <%-- 3.info --%>
        <%--  <%= 100/0 %> --%>
        
    </body>
</html>
