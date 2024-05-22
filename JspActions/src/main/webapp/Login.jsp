<%-- 
    Document   : Login
    Created on : 21-May-2024, 11:27:50 am
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	boolean loginFailed = false;
	if(username!=null && password!=null){
    	if("admin".equals(username) && "admin".equals(password)){
        	request.setAttribute("username",username);
        	request.getRequestDispatcher("welcome.jsp").forward(request,response);
	}
	else{
    	loginFailed=true;
	}
	}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<h1>Login Form</h1>
    	<form action="Login.jsp" method="post">
        	Username: <input type="text" name="username"><br>
        	Password: <input type="text" name="password"><br>
        	<input type="submit" value="Login" name="submit"/>
    	</form>
            <% if(loginFailed){
    	%><p style="color:red;">Invalid Username or password</p>
        	<%}%>
	</body>
</html>

