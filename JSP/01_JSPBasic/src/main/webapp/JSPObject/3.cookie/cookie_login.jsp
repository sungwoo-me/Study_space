<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  

<% 
	// 생성된 user_id 쿠키를 섬색해서 쿠키가 존재한다면 
	// 로그인 창 대신에 브라우저에 "이미 로그인한 사용자입니다. 
	// 를 출력해주시고, user_id가 없을 때 는 로그인 입력창이 등장하도록 
	// if else 문을 활용하여 만들어주세요 
	Cookie[] cookies = request.getCookies();
	String autoLogin = null;
	String userId = null ;
	
	
	// 향상된 for문으로 처리 가능  
	if(cookies != null){
		for (Cookie cookie : cookies){
			autoLogin = cookie.getName();
			if(autoLogin != null && autoLogin.equals("auto_login")) {
				response.sendRedirect("cookie_welcome.jsp");
			}
		}
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
로그인 창은 form으로 구서애주시면 됩니다.
input text 1개 (유저 아이디 입력), input password 1개 (비밀번호 입력),
input checkbox 1개 (자동 로그인)
목적지는 cookie_login_ok.jsp 로 해주세요. 
 -->

<form action = "cookie_login_ok.jsp" method = "post"><br/>
	<input type = "text" name = "id" placeholder = "아이디"><br/>
	<input type = "password" name = "pw" placeholder = "비밀번호"><br/>
	<input type = "checkbox" name = "login" value = "자동로그인 "><br/>
	<input type = "submit" value= "로그인" /><br/>
	<input type = "reset" value = "초기화"/ ><br/>
</form>





</body>
</html>