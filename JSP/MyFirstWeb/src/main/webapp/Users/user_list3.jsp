<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.ict.UserDAO" %>   
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>

<%@ page import = "java.sql.*" %>

<%@ page import = "kr.co.ict.UserVo" %>

<%
	// 모든 접속 정보는 UserDAO클래스 내에 있다.
	// 따라서 UserDAO를 생성하는 것으로 접속정보 설정이 끝난다.
	
	UserDAO dao = new UserDAO();
	
	// dao 내부에 userinfo 테이블 전체의 데이터를 가져오는 
	// getALLUserList()를 호출하는 것으로 필요 데이터 적재가 끝남 
	List<UserVo> userList = dao.getAllUserList();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
		<thead>
			<tr>
				<th>유저이름</th>
				<th>유저아이디 </th>
				<th>유저비번</th>
				<th>유저이메일</th>
			</tr>
		</thead>
		<tbody>
			<% for(UserVo user :userList){ %>
			
				<tr>
					<td><%= user.getuName() %></td>
					<td><%= user.getuId() %></td>
					<td><%= user.getuPw() %></td>
					<td><%= user.getuEmail() %></td>
				
				</tr>
			<%} %> 
		</tbody>
	</table>
</body>
</html>