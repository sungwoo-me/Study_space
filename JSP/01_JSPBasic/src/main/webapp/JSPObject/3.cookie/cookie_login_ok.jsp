<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  
<%
	String userId = request.getParameter("id");
	String userpw = request.getParameter("pw");
	String userlogin = request.getParameter("login");
	System.out.println(userlogin);
	
	
	if(userId.equals("abc1234") && userpw.equals("aaa1")){
		
		// 1. 아이디 비번이 맞고
		if(userlogin != null){
			//2. 자동로그인을 체크한 경우
			Cookie auto = new Cookie("auto_login" , userId);	
			auto.setMaxAge(50);
			// 쿠키를 생성한다. 
			//쿠키를 생성한 후 발급까지 처리해야한다. 
			response.addCookie(auto);
			
			
		}
		
		response.sendRedirect("cookie_welcome.jsp");
	}
		
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인에 실패하셨습니다.</h1>
	<a href = "cookie_login.jsp"> 로그인 화면으로 돌아가기 </a>
</body>
</html>