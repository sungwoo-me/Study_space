package kr.co.ict;

import java.util.Scanner;
import java.sql.*;
public class Q1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Select 구문 응용하여 
		// Scanner 이용하여 uid 입력 받은 후 
		// where uid = 입력받은 아이디 형식으로 내가 조회한 아이디의 정보 
		// 콘소레 찍히도록 해주세요 
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("조회할 유저의 아이디 입력 ");
			
			String uid = sc.next();
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_practice01" , "root", "mysql"); 
			Statement stmt = con.createStatement();
			
			
		
			ResultSet rs = stmt.executeQuery("SELECT * FROM  userinfo WHERE uid= '" + uid + "'   ");
			
			
			while(rs.next()){
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
