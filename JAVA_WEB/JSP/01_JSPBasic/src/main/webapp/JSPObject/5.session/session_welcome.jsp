<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("session_id");
	String pw = (String)session.getAttribute("session_pw");
	out.println(id + "님 환영합니다.") ;
	
	if (id == null){
		response.sendRedirect("session_login.jsp");
	}
	
%>

<br/>

<a href = "session_logout.jsp">
	로그아웃 
</a>
</body>
</html>