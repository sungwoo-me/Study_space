<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 테스트</title>
</head>
<body>
	<h1>회원 가입 양식 get 방식 </h1>
	<%-- get 메소드 방식은 네이버 검색창 같은느낌 url에 저장이 된다.  --%>
	<form action = "#" method = "get">
		<input type = "text" name = "id" placeholder= "아이디"/><br/>
		<input type = "password" name ="pw" placeholder = "비밀번호"/><br/>
		<input type = "submit" value ="제출" />	
	</form>
	
	
	<h1>회원 가입 양식 post 방식 </h1>
	<%-- post 방식은 서버에 데이터를 전송한다. 아이디 비번같이 비밀스러운 작업  --%>
	<form action = "#" method = "post">
		<input type = "text" name = "id2" placeholder= "아이디"/><br/>
		<input type = "password" name ="pw2" placeholder = "비밀번호"/><br/>
		<input type = "submit" value ="제출" />	
	</form>
</body>
</html> 