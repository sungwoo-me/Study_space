

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "kr.co.ict.UserVo" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>


<%
	// 아까 발생했던 rs.close() 실행 문제로 인해
	// DB에 있는 자료를 꺼냈을 때 , 곧바로 java 데이터로 받아오는 작업을 수행한 다음 
	// rs.close()하면 문제가 없습니다.
	// 따라서 SELECT 구문의 결과(SQL데이터)를 자바 형식으로 담을 클래스가  필요하고
	// 이를 VO(Value Object)라고 부릅니다. 
	// VO는 클래스이기 때문에 src/main/java에 클래스를 선언 및 정의한다.
	// userVO.class를 만들어보겠습니다. 
	
	// 1. 연결 변수 관리 
	
	
	String dbtype = "com.mysql.cj.jdbc.Driver";
	String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
	String dbid = "root";
	String dbpw = "mysql";
	ResultSet rs =  null ;
	Connection con  = null;
	PreparedStatement pstmt  = null ;
	
	// ArrayList<UserVO> 자료형을 이용해 한줄 한줄 단위로 여러 row를 저장한다.  \
	
	List<UserVo> userList = new ArrayList<>();
	
	try{
	

		// 1. DB 종류 지정 및 연결 
		Class.forName(dbtype);
		con = DriverManager.getConnection(dburl , dbid , dbpw); 
		
		// 2. 쿼리문 작성 및 pstmt 생성
		String sql = "SELECT * FROM userinfo" ;

		pstmt = con.prepareStatement(sql);
		
		// 3.ResultSet에 저장 
		
		rs = pstmt.executeQuery();
	
		
		
		//4. 테이블에 저장된 데이터를 자바로 옮기기 위해 UserVO 선언 
		// UserVO 하나 생성으로 row 몇개에 해당하는 데이터 
		while(rs.next()){
			// 1. 빈 리스트 생성
			String uName = rs.getString("uname");
			String uId = rs.getString("uid");
			String uPw = rs.getString("upw");
			String uEmail = rs.getString("uemail");
			
			UserVo userData = new UserVo(uName, uId, uPw, uEmail );
			userList.add(userData);
		}
		System.out.println(userList);
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
		// 이 영역에서 .close()를 쓰고 데이터를 body태그에서 쓰려면 
		// .close()이전에 DB에 있던 데이터를 모조리 자바로 옮겨야 함 
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
	<!--  향상된 for문을 이용해서 userList 내부 데이터를 
		Table형태로 user_list1과 동일한 양식으로 화면에 출력 
	 -->
	
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