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
		String name=request.getParameter("userName");
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		
		if(UserLogin.check(id))
		{
			%>
			
		<%@ include file="/signup.jsp" %>
		<script>document.write("Username is already taken try another username");</script>
		
		<%}else{
		UserLogin.signUp(name,id,pass);
		%>
		
		<%@ include file="/index.html" %>
		<script>alert("Signup successfull now login using username and password");</script>
		<%} %>
		

</body>
</html>