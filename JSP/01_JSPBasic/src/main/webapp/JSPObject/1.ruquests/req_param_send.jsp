<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 아래에 form 을 만들고 내부에 input 4개를 만들어주세요 .  
input 태그의 type 속성은 하나는 text, 하나는 password
name 속성은 하나는 apple, 하나는 banana로 해주세요. 
reset 버튼과 submit 버튼도 각각 하나씩 만들어주세요. 

form action 이 바로 목적지를 적는 부분 . 
웹 개발에서는 받을 페이지 화면 주소를 적는다 .
--%>

	<form action = "req_param_getpost.jsp" method = "get">
		아이디 : <input type = "text" name = "id"  placeholder= "id"/><br/>
		비밀번호 : <input type = "password" name = "pw"  placeholder= "password"/><br/>
		
		취미 : 
		<input type = "checkbox" name = "hobby" value="요리"> 요리&nbsp;
		<input type = "checkbox" name = "hobby" value="낚시"> 낚시&nbsp;
		<input type = "checkbox" name = "hobby" value="축구"> 축구&nbsp;
		<input type = "checkbox" name = "hobby" value="농구"> 농구&nbsp;<br/>
		
		전공 : 
		<input type = "radio" name = "major" value = "산시"> 산시
		<input type = "radio" name = "major" value = "컴공"> 컴공
		<input type = "radio" name = "major" value = "전전"> 전전
		<input type = "radio" name = "major" value = "경영"> 경영
		<hr/>
		<br>
		<input type = "reset" value = "초기화" />
		<input type = "submit" value ="제출" />	
	</form>
</body>
</html>