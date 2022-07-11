<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<%
	
	/*
		- 세션에 저장된 데이터는 브라우저 창이 종룔될 때까지, 혹은 세션으 유효시간이
		만료되기 전까지 웹 어플리케이션의 모든 JSP 에서 사용할 수 있다.
		- 세션에 저장된 데이터를 가져오려면 sessiont 객체의 get 메서드 사용하며
		, 매개값으로는 가져올 데이터의 세션 이름을 적어준다.
		
	*/
	String userId = (String)session.getAttribute("id_session");
	String userId2 = (String)session.getAttribute("namese_session");
	String userId3 = (String)session.getAttribute("JSP");


	out.println(userId + "<br/>") ;
	out.println(userId2 + "<br/>") ;
	out.println(userId3 + "<br/>") ;

	// 세션의 유효시간은 아래 메서드를 사용한다.
	// 기본 시간은 30분으로 세팅되어 이 ㅆ고 바꾸면 초단위로 바뀐다.
	// getMaxInctiveInterval()로 남은 시간 조회 가능
	int sTime = session.getMaxInactiveInterval();
	out.println("세션의 유효시간 : " + sTime + "초<br/>") ;
	
	
	
	// 특정 세션 데이터 삭제
	userId2 = (String)session.getAttribute("namese_session");

	out.println("namese_session 삭세 전 : " + userId2 + "<br/>") ; 
	
	session.removeAttribute("namese_session");
	
	userId2 = (String)session.getAttribute("namese_session");
	out.println("namese_session 삭세 후 : " + userId2 + "<br/>") ; 
	
	
	// 세션 일괄적으로 삭제하기
	session.invalidate();
	
	if(request.isRequestedSessionIdValid()){
		out.println("유효한 세션 존재");
	}
	else{
		out.println("세션이 파기되어 조회할 수 없다. ") ; 
	}

	out.println("------------------ <br/> ");


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