<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int age = Integer.parseInt(request.getParameter("age"));


	// .sendRedirect() 가 호출되면 거기 적힌 싸이트로 강제로 이돈된다. 

	// response.sendRedirect("https://naver.com");
	
	// age 가 20살 이상이면 res_adult.jsp (성인 확인 결과창)
	// age 가 20미만이면 res_child.jsp (미성년자 확인 결과창 )
	// 조건문 작성
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	if(age >= 20){
		response.sendRedirect("res_adult.jsp");
	}
	else{
		response.sendRedirect("res_child.jsp");
	}
%>

</body>
</html>