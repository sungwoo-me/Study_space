<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "kr.co.ict.UserDAO" %>   
<%@ page import = "kr.co.ict.UserVo" %>   


<%

	request.setCharacterEncoding("utf-8");
	String sid= (String)session.getAttribute("seesion_id");
	if(sid== null){
		response.sendRedirect("login_form.jsp");
	}

	/*  DAO 를 활용하면 필요 없는 구문이다. 
	
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

	*/
	// DAO를 활용한 로직으로 전환 
	// 1. DAO 생성

	UserDAO dao = UserDAO.getInstance();	
	// 2. DAO내부에서 회원 한명의 정보만 가져오는 
	UserVo user = dao.getUserData(sid);
	
	// 3. 얻어온 user 내용물 확인
	out.println(user + "<br/>") ; // UserVO에 toString메서드가 있어서 내용물이 출력
	// 4. user 내용물에 있는 내용물을 아래 표현식에 getter로 집어넣기 
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
		<input type = "text" name = "fname"  placeholder= "이름" value ="<%= user.getuName() %>" required  /><br/>
		<input type = "email" name = "femail"  placeholder= "이메일" value ="<%= user.getuEmail() %>" required  /><br/>
		<input type = "submit" value ="수정하기" /> <input type = "reset" value ="초기화">
	</form>

</body>
</html>