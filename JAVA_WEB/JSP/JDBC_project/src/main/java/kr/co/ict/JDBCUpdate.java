package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// id는 변경 불가 
		// 어떤 아이디의 pw, name , email을 변경할지 조회 
		// 먼저 id 받고
		// pw, name, email을 받아서
		// UPDATE 구문에서 조건절에 id를 넣너 타겟을 정하고 나머지 수정 
		
		String dbtype = "com.mysql.cj.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
		String dbid = "root";
		String dbpw = "mysql" ;
		
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("변경할 아이디 입력 ");
			String uid= sc.next();
			
			System.out.println("변경할 비밀번호 입력 ");
			String upw= sc.next();
			
			System.out.println("변경할 이름 입력 ");
			String uname= sc.next();
			
			System.out.println("변경할 이메일 입력 ");
			String uemail= sc.next();
			
			Class.forName(dbtype);
			Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
			Statement stmt = con.createStatement();
			stmt.executeUpdate("UPDATE userinfo SET upw= '" + upw +
												"', uname ='" + uname+
												"', uemail='" +  uemail +
												"' WHERE uid='" + uid + "'");
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
				
				
		
	}

}
