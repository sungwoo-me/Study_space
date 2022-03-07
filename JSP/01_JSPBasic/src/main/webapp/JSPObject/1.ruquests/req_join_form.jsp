<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "req_join_result.jsp" method = "post">
		<input type = "text" name="id" placeholder  = "아이디" > 
		<input type = "password" name="pw" placeholder  = "비밀번호" > 
		<input type = "text" name="name" placeholder  = "이름" > 
		<input type = "text" name="age" placeholder  = "나이" > 
		<input type = "submit" value = "제출">
		<input type = reset>
	
	</form>
</body>
</html>