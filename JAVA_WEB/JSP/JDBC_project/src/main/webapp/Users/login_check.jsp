
<%@ page import= "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
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
	
		
		
		//4. 실행 
		if(rs.next()){
			String uid =rs.getString("uid") ;
			String upw = rs.getString("upw") ;
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
		
		
	}catch(Exception e){
		e.printStackTrace();
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