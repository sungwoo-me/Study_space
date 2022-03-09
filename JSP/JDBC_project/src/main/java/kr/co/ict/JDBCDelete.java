package kr.co.ict;
import java.util.Scanner;

import java.sql.*;


public class JDBCDelete {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String dbtype = "com.mysql.cj.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
		String dbid = "root";
		String dbpw = "mysql";
		
		
		try {
			Scanner sc = new Scanner(System.in);
			String uid= sc.next();
			
			
			Class.forName(dbtype);
			Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
			Statement stmt = con.createStatement();
			stmt.executeUpdate("DELETE FROM userinfo where uid = '" + uid + "'");
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
