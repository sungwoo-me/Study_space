<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
	String pw = request.getParameter("fpw");
	String name = request.getParameter("fname");
	String email = request.getParameter("femail");
	
	String sid= (String)session.getAttribute("seesion_id");
	
	String dbtype = "com.mysql.cj.jdbc.Driver";
	String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
	String dbid = "root";
	String dbpw = "mysql";
	
	try {
		
		
		// 1. DB 종류 지정 및 연결 
		Class.forName(dbtype);
		Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
		
		// 2. 쿼리문 작성 및 pstmt 생성
		String sql = "UPDATE userinfo SET uname = ?, upw=? , uemail = ? WHERE uid = ?" ;
	
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		// 3. pstmt 실행으로 사용자가 보낸 폼 데이터 DB에 저장 
	
		pstmt.setString(1,name);
		pstmt.setString(2,pw);
		pstmt.setString(3,email);
		pstmt.setString(4,sid);
		
		
		// 4. 쿼리문 실행 
	
		pstmt.executeUpdate();

		
		// 5. 자원회수 
		con.close();
		pstmt.close();
		
	
	}catch(Exception e) {
		e.printStackTrace();
	} finally{
	
	}
	

%>    



    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> <%=sid %> 회원의 정보가 수정되었습니다. </h1> <br/>
<a href = "login_welcome.jsp">메인 페이지 돌아가기 </a>

</body>
</html>