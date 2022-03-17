<%@ page import = "kr.co.ict.UserDAO" %>   
<%@ page import = "kr.co.ict.UserVo" %>   

<%@ page import= "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	/*
	try{
		String dbtype = "com.mysql.cj.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
		String dbid = "root";
		String dbpw = "mysql";

		// 1. DB 종류 지정 및 연결 
		Class.forName(dbtype);
		Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
		
		// 2. 쿼리문 작성 및 pstmt 생성
		String sql = "SELECT * FROM userinfo WHERE uid = ?" ;

		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1, id);
		
		// 3. pstmt 실행으로 사용자가 보낸 폼 데이터 DB에 저장
		
		ResultSet rs = pstmt.executeQuery();
	
		// 1~3까지 로직을 DAO의 getUserData 를 사용해 수행하도록 변경해주세요 .
		
		*/
		

		UserDAO dao = UserDAO.getInstance();		
		UserVo user = dao.getUserData(id);
		
		System.out.println("DB에서 받아온 정보 : " + user);
		
		//4. 실행 
		
	
		
		if(user != null){
			String uid =user.getuId() ;
			String upw = user.getuPw() ;
			System.out.println("DB내 유저 아이디 : " + uid ) ;			
			System.out.println("DB내 유저 비밀번호 : " + upw ) ;			
			if(id.equals(uid) && pw.equals(upw)){
				session.setAttribute("seesion_id",uid);
				session.setAttribute("session_pw",upw);
				// 로그인 성공 후 welcome 페이지로 보내주기 
				response.sendRedirect("login_welcome.jsp");
			}
			else{
				out.println("비밀번호가 틀렸습니다. ");
			}
		}else{
			out.println("존재하지 않는 아이디 입니다.다시 시도해주 세요.");
		}
				
			
	
	
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