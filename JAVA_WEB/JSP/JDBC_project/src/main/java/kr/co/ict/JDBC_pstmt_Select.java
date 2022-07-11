package kr.co.ict;


import java.util.Scanner;
import java.sql.*;
public class JDBC_pstmt_Select {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dbtype = "com.mysql.cj.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
		String dbid = "root";
		String dbpw = "mysql";
		
		
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("조회할 아이디를 입력하세요 ");
			String uid= sc.next();
			
			// 1. DB종류 지정 
			Class.forName(dbtype);
			// 2. DB연결 
			Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
			// 3. PreparedStatement 구문은 먼저 SQL 쿼리문을 만든 후 적용
			// 중간에 사용자 입력 정보를 받는곳은 전 부 ?로 표시한다. 
			String sql = "SELECT * FROM userinfo WHERE uid=?" ;
			
			// pstmt 변수를 만들어 세팅한다.
			PreparedStatement pstmt = con.prepareStatement(sql);
			//1번 ? 자리에 uid 라는 변수를 넣겠다. 
			pstmt.setString(1,uid);
			
			
			ResultSet rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
