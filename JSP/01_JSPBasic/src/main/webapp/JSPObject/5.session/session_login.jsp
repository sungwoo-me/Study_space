<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 창입니다. </h1>
	<form action ="session_login_check.jsp" method = "post">
			ID <input type = "text" name = "id"  required>  <br/>
			PW <input type = "password" name = "pw" required >  <br/>
			nickname <input type = "text" name = "nickname">  <br/> 
			<input type = "submit" value ="로그인 "> 
			<input type = "reset" value = "초기화 ">  
	</form>

</body>
</html>