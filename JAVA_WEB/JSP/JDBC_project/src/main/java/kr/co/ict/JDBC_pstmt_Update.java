package kr.co.ict;
import java.util.Scanner;
import java.sql.*;


public class JDBC_pstmt_Update {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String dbtype = "com.mysql.cj.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
		String dbid = "root";
		String dbpw = "mysql";
		
		
		
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("아이디를 선택해주세요 ");
			String uid = sc.next();

			System.out.println("변경할 이름를 선택해주세요 ");
			String upw = sc.next();

			System.out.println("변경할 비밀번호를 선택해주세요 ");
			String uname = sc.next();

			System.out.println("변경할 이메일을 선택해주세요 ");
			String uemail = sc.next();

			// 1. DB종류 지정 
			Class.forName(dbtype);
			// 2. DB연결 
			Connection con = DriverManager.getConnection(dburl , dbid , dbpw); 
			// 3. PreparedStatement 구문은 먼저 SQL 쿼리문을 만든 후 적용
			// 중간에 사용자 입력 정보를 받는곳은 전 부 ?로 표시한다. 
			String sql = "UPDATE userinfo SET uname = ?, upw=? , uemail = ? WHERE uid = ?" ;
			
			// pstmt 변수를 만들어 세팅한다.
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			
			pstmt.setString(1,uname);
			pstmt.setString(2,upw);
			pstmt.setString(3,uemail);
			pstmt.setString(4,uid);			
			
			pstmt.executeUpdate();

			// .close()로 열린 자료 닫기
			con.close();
			pstmt.close();
			sc.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			// 종료 안내 구문 + .close()로 열린 자료 닫기
			System.out.println("로직 실행 완료 !! ");
		}
		
		
	}

}
