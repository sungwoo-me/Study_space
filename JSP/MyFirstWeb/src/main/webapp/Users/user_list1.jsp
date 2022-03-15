<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import = "java.sql.*" %>
    
    
<%

	String dbtype = "com.mysql.cj.jdbc.Driver";
	String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
	String dbid = "root";
	String dbpw = "mysql";
	ResultSet rs =  null ;
	Connection con  = null;
	PreparedStatement pstmt  = null ;
	try{
	

		// 1. DB 종류 지정 및 연결 
		Class.forName(dbtype);
		con = DriverManager.getConnection(dburl , dbid , dbpw); 
		
		// 2. 쿼리문 작성 및 pstmt 생성
		String sql = "SELECT * FROM userinfo" ;

		pstmt = con.prepareStatement(sql);
		
		// 3. pstmt 실행으로 사용자가 보낸 폼 데이터 DB에 저장
		
		rs = pstmt.executeQuery();
	
		
		
		//4. 실행 
	
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
		// 중간에 에러가 나더라도 자원은 회수하고 끝냄 
		con.close();
		pstmt.close();
		rs.close();
	}


	
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
				<%while(rs.next()){ 	
				%>
					<tr>
						<td><%=rs.getString("uname")%></td>
						<td><%=rs.getString("uid")%></td>
						<td><%=rs.getString("upw")%></td>
						<td><%=rs.getString("uemail")%></td>					
					</tr>
				<%} %>
		</tbody>
	
	</table>

</body>
</html>