<%-- 
    Document   : welcome
    Created on : 21-May-2024, 11:30:58 am
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    	<h1>Welcome, <%=request.getAttribute("username")%></h1><br>
    	<a href="Login.jsp">Logout</a>
	</body>
</html>

