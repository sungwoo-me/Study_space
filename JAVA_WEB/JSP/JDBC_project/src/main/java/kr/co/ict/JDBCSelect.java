package kr.co.ict;
import java.sql.*;
public class JDBCSelect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// JDBC 연결 여부 확인 
		
		try {
			//MySQL을 연동할것임을 알리기 위해 forName내부에 MySQL용 연동구문을 적습니다.
			// SQL연동은 try~catch블럭 내부에 넣도록 강제됨 . 
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 커넥션 객체는 연결 여부를 확인합니다.
			// 입력요소는 접속주소, mysql계정명, mysql비밀번호 순으로 입력합니다. 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_practice01" , "root", "mysql"); 
		
		
			// 쿼리문을 연결된 mysql에 날려주기 위해, 쿼리문을 준비한다.
			// statement 라는 변수에 저장해 날려줍니다.
			Statement stmt = con.createStatement();
			// .executeQuery() 내부 실행할 쿼리문을매개 변수로 작성합니다. 
			ResultSet rs = stmt.executeQuery("SELECT * FROM  userinfo");
			System.out.println(rs);
			// ResultSet 은 기본적으로 row 갯수만큼 데이터를 저장한다. 
			// ResultSet 은 순차적으로 조회해서 쓰는 경우가 많다. 
			// 맨 처음 ResultSet은 -1번이라는 임시번호를 타겟으로 잡는다.
			// 이 번호를 옮기기 위해 .next()를 호출하여 다음 번호로 넘긴다 .
			rs.next();
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			
			
			// update 구문은 insert delete update 를 실행 가능 
			
			while(rs.next()) {
				System.out.println("---------------------------");
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
