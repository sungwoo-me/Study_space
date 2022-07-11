<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nickname= request.getParameter("nickname");
	
	if(id != null){
		response.sendRedirect("session_welcome.jsp");
	}
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(id.equals("kkk1234") && pw.equals("1111")){
		session.setAttribute("session_id",id);
		session.setAttribute("session_pw",pw);
		response.sendRedirect("session_welcome.jsp");
	}


%>

	<a href = "session_login.jsp">로그인에 실패 했습니다. 누르면 로그인 창으로 돌아갑니다. </a>
</body>
</html>