<%@ page import="java.lang.Math" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
		
		h1 {
			background-color:#bce8ef;
			padding:20px;
			margin:5px;
			font-family:Veronica;
			border-radius:4px;
			border:1px solid #c5d0d2;
			text-align:center;
		}
		#header {
			background-color:#6cd4e4;
			margin:5px;
			font-family:Veronica;
			border-radius:4px;
			height:32px;
		}
		.main {
			background-color:#d6ddde;
			
			margin:5px;
			font-size:40px;
			
		}
		
	</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>8 WORD GAME</h1>
	
	<div id="header">
	</div>
	
	<div class="main">
		<%
			char ch[]=new char[8];
			for(int i=0;i<8;i++){
				ch[i]=(char)(Math.floor(Math.random()*100)%26+65);
			}
			out.println(ch[0]+" "+ch[1]+" "+ch[2]+" "+ch[3]+" "+ch[4]+" "+ch[5]+" "+ch[6]+" "+ch[7]);
		%>
	</div>
	
</body>
</html>