<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%

	request.setCharacterEncoding("utf-8");
%>
<!-- c 태그라이브러리 쓸수 있도록 지시자를 작성해주세요 . -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jstl_form2.jsp를 만들어서 목적지를 여기로 해주시고 실제로 보낸데이터가 여기로 출력되도록  -->


<c:choose>
	<c:when test="${param.name eq '자바'}">
		당신은 자바로 웹 개발을 합니다. 
	</c:when>
	<c:when test="${param.name eq'파이썬' }">
		당신은 파이썬으로 웹 개발을 합니다. 
	</c:when>
	<c:otherwise>
		당신은 php로 웹 개발을 합니다 .
	</c:otherwise>

</c:choose>


</body>
</html>