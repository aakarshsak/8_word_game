<%@ page import="com.example.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		
	
		String name=UserLogin.login(id,pass);
		
		if(name!=null)
		{
			session.setAttribute("Name",name);
			%>
		
	<%@ include file="/game.jsp" %>
	<script>alert("Successfully Logged In");</script>
	
	<% }else{
		
	%>
	<%@ include file="/login.jsp" %><br><br><br>
	<script>document.write("Invalid Username/Password");</script>
	
	<%} %>

</body>
</html>