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
	<h1>숫자가 아닌 요소를 반복하는 JSTL</h1>
	<%-- arr 변수 내에 과일 5개 이름을 배열로 저장하는 구문  --%>
	<c:set var = "arr" value = '<%= new String[] {"사과", "딸기" , "망고", "바나나", "포도"} %>' />
	
	<%-- c:forEach는 향상된 for문처럼 쓸 수도 있다 .  --%>
	<c:forEach var="i" items = "${arr}">
		${i} &nbsp;&nbsp;&nbsp;
	</c:forEach>

</body>
</html>