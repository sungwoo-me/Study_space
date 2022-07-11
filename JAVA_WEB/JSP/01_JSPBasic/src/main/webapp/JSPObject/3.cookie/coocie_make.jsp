<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%

	//# 쿠키 생성 방법
	// 1. 쿠키 객체를 생성 - 생성자의 매개값으로 쿠키의 이름과 저장할 데이터를 입력 
	Cookie apple = new Cookie("appel_cookie", "사과맛 ");	
	Cookie peanut = new Cookie("peanut_cookie", "땅콩맛 ");
	
	// 2. 쿠키 클래스의 setter 메서드로 쿠키의 속송들을 설정하기. 
	apple.setMaxAge(60*20); // 60초 * 60 은 한시간
	peanut.setMaxAge(20);
	
	// 3. 사용자에게 http 응답시 response 객체에 생성된 쿠키를 탑재하여서 발급하기 
	response.addCookie(apple);
	response.addCookie(peanut);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie_check.jsp"> 쿠키 확인하러 가기 </a>

</body>
</html>