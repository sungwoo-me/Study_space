package kr.co.ict;

import java.sql.*;
import java.util.Scanner;
public class JDBCInsert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Scanner로 id, pw, name, email을 입력받아 
		//INSERT INTO 구문을 이용해 DB에 데이터 적재
		
		// SELECT q1처럼 작성 
		// 데이터가 들어갔는지 확인 . 
		try {
		
			Scanner sc = new Scanner(System.in);
			System.out.println("추가할 유저의 아이디 입력 ");
			String uid = sc.next();
			System.out.println("추가할 유저의 비밀번호 입력 ");
			String upw = sc.next();
			System.out.println("추가할 유저의 이름 입력 ");
			String uname = sc.next();
			System.out.println("추가할 유저의 이메일 입력 ");
			String uemail = sc.next();
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_practice01" , "root", "mysql"); 
			Statement stmt = con.createStatement();
			
			
		
			stmt.executeUpdate("INSERT INTO userinfo VALUES('" + uname +  "','" + uid +  "', '" + upw +  "','" + uemail + "')");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
