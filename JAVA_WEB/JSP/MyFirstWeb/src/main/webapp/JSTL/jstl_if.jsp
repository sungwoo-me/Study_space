<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지 내부에서 JSTL 태그를 쓰고 싶다면 디렉티브를 통해 taglib 선언을 해야 합니다.  --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<%

	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:if test="${param.name == '홍길동'}">
		<p>name 파라미터로 들어온 값은 ${param.name }입니다. </p>
	</c:if>
	
	<c:if test="${param.name == '이순신'}">
		<p>name 파라미터로 들어온 값은 ${param.name }입니다. </p>
	</c:if>
	
	<c:out value="name 파라미터로 드러온 값은 ${param.name}입니다."></c:out>
	
	
	<hr/>
	<br/>
	
	<!--  변수 선언하는데 스크립트릿 대신  -->
	<c:set var = "fName" value = "${param.name }"/>

	당신이 입력한 값은 ${fName }입니다.  
	<br/>
	<hr/>
	<br/>
	
	<c:out value="당신이 입력한 값은 ${fName}입니다."></c:out>
	<br/>
	<hr/>
	<br/>
	
	
</body>
</html>