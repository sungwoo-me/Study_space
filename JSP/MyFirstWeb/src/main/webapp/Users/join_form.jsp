<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 회원 가입 페이지 </h1>	
	<form action = "join_check.jsp" method = "post">
		<input type = "text" name = "id"  placeholder= "아이디"/><br/>
		<input type ="password" name ="pw" placeholder= "비밀번호"> <br/>
		<input type = "text" name = "name"  placeholder= "이름"/><br/>
		<input type = "text" name = "email"  placeholder= "이메일"/><br/>
		<input type = "submit" value ="제출" /> <input type = "reset" value ="초기화">
	</form>
	

</body>
</html>