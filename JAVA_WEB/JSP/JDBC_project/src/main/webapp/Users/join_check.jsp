<%@ page import = "java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	// 폼에서 날린 데이터 변수에 저장 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	// 사용자 입력한 데이터 토대로 
	// 내부에 DB 연동 후 INSERT 구문 실행 하도록 구현 
	
	
	
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
		String sql = "INSERT INTO userinfo VALUES(?,?,?,?)" ;

		PreparedStatement pstmt = con.prepareStatement(sql);

		// 3. pstmt 실행으로 사용자가 보낸 폼 데이터 DB에 저장
		pstmt.setString(1,name);
		pstmt.setString(2,id);
		pstmt.setString(3,pw);
		pstmt.setString(4,email);
			 
			
		//4. 실행 
		pstmt.executeUpdate();
		
		con.close();
		pstmt.close();
		
	
	}catch(Exception e) {
		e.printStackTrace();
	} finally{
		// 4. out.println("외원가입이 완료되었습니다. ")  띄어서 가입 완료 알리기 
		out.println("회원가입이 완료되었습니다.") ;
	}
%>    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "login_form.jsp">로그인으로 이동하기 </a>
</body>
</html>