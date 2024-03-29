<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String sid = (String)session.getAttribute("seesion_id") ; 

	if(sid == null){
		response.sendRedirect("login_form.jsp");
	}
	// DB 연동 후 , 세션에서 받아온 아이디 이용해
	// 회원탈퇴 후 body태그 내에는 "아이디 회원의 탈퇴가 완료되었습니다. 
	// 출력 후 실제 DB에 DELETE 구문을 날려 삭제 처리 하기 
	
	String dbtype = "com.mysql.cj.jdbc.Driver";
	String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
	String dbid = "root";
	String dbpw = "mysql";

	
	// 3. PreparedStatement 구문은 먼저 SQL 쿼리문을 만든 후 적용
	// 중간에 사용자 입력 정보를 받는곳은 전 부 ?로 표시한다. 
	
	// pstmt 변수를 만들어 세팅한다.
	
	try {
		

		// 1. DB 종류 지정 및 연결 
		Class.forName(dbtype);
		Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
		
		// 2. 쿼리문 작성 및 pstmt 생성
		String sql = "DELETE FROM userinfo WHERE uid=?" ;

		PreparedStatement pstmt = con.prepareStatement(sql);

		// 3. pstmt 실행으로 사용자가 보낸 폼 데이터 DB에 저장

		pstmt.setString(1,sid);
		
		// 4. 쿼리문 실행 
		pstmt.executeUpdate();
		
		
		
		// 5. 자원회수 
		con.close();
		pstmt.close();
		
	
	}catch(Exception e) {
		e.printStackTrace();
	} finally{
		// 회원 탈퇴시 세션 파기하기 
		session.invalidate();
		//response.sendRedirect("login_form.jsp");
	}
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1><%=sid%> 계정 삭제가 완료되었습니다. </h1>
	<a href = "login_form.jsp">메인화면으로 돌아가기 </a>
	
</body>
</html>