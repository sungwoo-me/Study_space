<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String sid = (String)session.getAttribute("seesion_id");
	if(sid != null){
		response.sendRedirect("login_welcome.jsp");
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 로그인 페이지 </h1>	
	<form action = "login_check.jsp" method = "post">
		<input type = "text" name = "id"  placeholder= "아이디"/><br/>
		<input type ="password" name ="pw" placeholder= "비밀번호"> <br/>
		<input type = "submit" value ="제출" /> <input type = "reset" value ="초기화">
	</form>
	<a href = "join_form.jsp"> 회원가입 하기 </a>
</body>
</html> 