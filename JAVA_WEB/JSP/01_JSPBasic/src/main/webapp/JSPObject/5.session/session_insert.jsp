<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<%
	
	/*
	 - 세션은 쿠키마찬가지로 http통신 데이터를 유지하기 위한 수단으로 사용된다.
	 - 세션에 데이터를 저장할 때 JSP 내장 session이 지원하는 setAttrubute()메서드 사용
	 - 해당 메서드의 첫 번째 매개값으로 세션의 이름을 정해주고
	 두번째 매개값으로 세션에 저장할 데이터를 선택
	 
	
	*/
	session.setAttribute("id_session", "abc1234");
	session.setAttribute("namese_session", "김말이");
	session.setAttribute("JSP", "SPRING_FRAMEWORK");

	// 세션 시간 1시간으로 설정 
	session.setMaxInactiveInterval(300);
	
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>