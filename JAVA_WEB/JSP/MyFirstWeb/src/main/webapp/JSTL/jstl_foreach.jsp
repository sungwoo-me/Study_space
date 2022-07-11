<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<c:forEach begin="1" end ="100" step="1" var="number">
		<c:set var="total" value="${total + number }"/>
	</c:forEach>
	<h1>1~100까지의 누적합 : ${total}</h1>

	<c:forEach begin="1" end ="4" step="1" var="number">
		<c:forEach begin="1" end ="9" step="1" var="number2">
			<c:set var="total" value="${number * number2 }"/>
			<p>${number} * ${number2} = ${total} <br/>
		</c:forEach>
		<hr/>
	</c:forEach>

</body>
</html>