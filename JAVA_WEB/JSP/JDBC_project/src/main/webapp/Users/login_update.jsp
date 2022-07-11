<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
   
<%

	request.setCharacterEncoding("utf-8");
	String sid= (String)session.getAttribute("seesion_id");
	if(sid== null){
		response.sendRedirect("login_form.jsp");
	}

	String dbtype = "com.mysql.cj.jdbc.Driver";
	String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
	String dbid = "root";
	String dbpw = "mysql";
	
	String tname = "" ;
	String temail = null;
		
	try {
		
	
		// 1. DB 종류 지정 및 연결 
		Class.forName(dbtype);
		Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
		
		// 2. 쿼리문 작성 및 pstmt 생성
		String sql = "SELECT * FROM userinfo WHERE uid =?" ;
	
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		// 3. pstmt 실행으로 사용자가 보낸 폼 데이터 DB에 저장 
	
		pstmt.setString(1,sid);
		
		ResultSet rs = pstmt.executeQuery();
		
		
		// 4. 쿼리문 실행 
		
		if(rs.next()){
			tname=rs.getString("uname");
			temail=rs.getString("uemail");;
		}
		
		
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
	
	<h1><%=sid %>  정보를 수정합니다. ! </h1>
	<form action = "update_check.jsp" method = "post">
		<input type ="password" name ="fpw" placeholder= "비밀번호" required > <br/>
		<input type = "text" name = "fname"  placeholder= "이름" value ="<%= tname %>" required  /><br/>
		<input type = "email " name = "femail"  placeholder= "이메일" value ="<%= temail %>" required  /><br/>
		<input type = "submit" value ="수정하기" /> <input type = "reset" value ="초기화">
</form>

</body>
</html>