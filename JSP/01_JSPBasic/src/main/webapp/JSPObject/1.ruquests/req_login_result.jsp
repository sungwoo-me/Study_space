<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

	if(id.equals("조성우") && pw.equals("1234")){ %>
		<p> <%= id %> 님 환영합니다. </p>	
	<%}else{ %>
		<p> <%= id %> </p>
		<p> 로그인에 실패했습니다. </p>
	<%} %>	
	
	
	
	
</body>
</html>