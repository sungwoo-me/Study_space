<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "error_page.jsp" %>

<%
	// 상단 디렉트브에 erro_page.jsp 를 지정했기 때무넹 
	// try~ catch 없이도 바로 예외 처리 실행된다. 
	int a= 3/0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	나누기의 결과값은 <%= a %> 입니다 .
</body>
</html>