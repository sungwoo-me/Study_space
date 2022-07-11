<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// application 은 application 객체를 사용해서 저장 혹은 데이터 값을 받아 올 수 있다.
	// getAtturbute() 메서드와 setAttribute 메서드 사용 가능
	// application 에 한번 저장된 객체는 서버 종료 전까지 유지된다. 
	// 세션은 창을 두개 키고 로그인 해도 넘어가지 않지만 어플리케이션은 공유가 된다 .

	int visitCnt = 0 ; 
	Integer temp  = (Integer)application.getAttribute("visit");
	if(temp != null){
		visitCnt = temp ; 
	}
	visitCnt ++ ; 
	application.setAttribute("visit", visitCnt);
	

%>
<hr/> 
	<h3>방문자 수 : <%= visitCnt %></h3>
<hr/>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>