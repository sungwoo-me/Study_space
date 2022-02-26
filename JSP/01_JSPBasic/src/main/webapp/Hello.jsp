<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 1일차 공부 </title>
</head>
<body>

	<!--  JSP 에서는 스크립트릿이라는 태그를 이용해서 
	JS 의 script태그처럼 내부에 자바 구문을 작성 할 수 있다.  -->
	<% for(int i = 0 ; i<3; i++){ %>
	<h2>이클립스와 톰 캣으로 페이징 랜더링 </h2>
	<p> 
	내용 어쩌구 저쩌구 
	</p>
	<%} %>
	
	
</body>
</html>