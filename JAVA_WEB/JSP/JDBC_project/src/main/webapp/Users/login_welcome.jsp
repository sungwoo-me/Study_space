<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  
<%
	// 세션에 저장된 정보를 확인해
	// ID님 접속을 환영합니다 .라고 안내해 주는 화면 만들기
	// 탈퇴하기, 가입하기, 정보 수정 버튼 추가 하기 
	String sid = (String)session.getAttribute("seesion_id") ; 

	
	// 로그인 안된 사용자가 접근하면 로그인 페이지로 보내기 

	if(sid==null){
		response.sendRedirect("login_form.jsp");
	}
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1><%=sid%>님 접속을 환영합니다. </h1> 
	<a href ="login_update.jsp"> 정보 수정하기 </a><br/>
	
	<a href ="logout.jsp"> 로그아웃하기 </a><br/> 
	<!-- 세션 파기 후 login_form으로 보내기  -->
	
	
	<a href ="member_out.jsp"> 회원탈퇴하기  </a><br/>
	<!-- 회원 탈퇴  -->
	
</body>
</html>