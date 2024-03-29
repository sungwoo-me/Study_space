package kr.co.ict;

import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.*;
public class UserDAO {

	// DB접속에 필요한 변수들을 아래 선언한다. 
	private String dbtype = "com.mysql.cj.jdbc.Driver";
	private String dburl = "jdbc:mysql://localhost:3306/jdbc_practice01";
	private String dbid = "root";
	private String dbpw = "mysql";
	private DataSource ds ; 
	
	// 생성할 때 자동으로 Class.forName()을 실행하게 만든다. 
	// 이것은 어떤 쿼리문을 실행해도 공통적으로 실행하는 부분 
	
	/*
	public UserDAO() {
		try {
			Class.forName(dbtype);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	*/
	
	// 싱글턴 패턴 처리 
	// 싱글턴은 하나 를 생성한 다음
	// 요청시 마다 생성된 DAO의 주소값만 공유해서
	// DAO생성에 필요한 시간을 절약하기 위해 사용 한다. 
	
	// 3. DAO 내부에 멤버 변수로 UserDAO를 하나 생성한다.
	private static UserDAO dao = new UserDAO();
	
	
	// 1. 생성자 private 처리해서 외부에서 생성명령을 내릴수 없게 처리한다. 
	private UserDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 2. static 키워드를 이용해서 한번만 생성하고 그 이후로는 
	// 주소를 공유하는 getInstance() 메서드를 생성 
	
	public static UserDAO getInstance() {
		if(dao == null) {
			dao = new UserDAO();
		} 
		return dao ; 
	}
	
	
	
	
	
	// user_list2.jsp 코드 로직을 대체 
	// user_list2.jsp에서 전체 유저 목록을 필요로 하기 때문에
	// 실행 결과로 List<UserVO>를 리턴해줘야 한다.
	// 역시 SELECT구문을 실핼할때에는 리턴자료가 필요하고
	// INSERT, DELETE , UPDATE구문을 실행할때는 리턴자료가 void 입니다. 
	public List<UserVo> getAllUserList(){
		//  Connection, PreparedStatement, ResultSet 을 선언한다. 
		ResultSet rs =  null ;
		Connection con  = null;
		PreparedStatement pstmt  = null ;
		
		// ArrayList<UserVO> 자료형을 이용해 한줄 한줄 단위로 여러 row를 저장한다.  \
		
		List<UserVo> userList = new ArrayList<>();
		
		try {
			con = ds.getConnection();
			String sql = "SELECT * FROM userinfo";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String uName = rs.getString("uname");
				String uId = rs.getString("uid");
				String uPw = rs.getString("upw");
				String uEmail = rs.getString("uemail");
				UserVo userData = new UserVo(uName, uId, uPw, uEmail);
				userList.add(userData);  
			}
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally {
			try {
				con.close();
				pstmt.close();
				rs.close();
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		return userList ;
	}
	
	// login_updata.jsp의 경우 로그인한 유저 한 명의 데이터만 DB에서 얻어 옵니다.
	// 따라서 , 그 한명으이 유저 데이터만을 이용해 SELECT 구문을 써야 합니다.
	// login_updata.jsp 상단의 sId 변수에 들어있는 유저명을 이용해 유저 데이터를 얻어옵니다. 
	
	public UserVo getUserData(String sId) {
		// 접속 로직은 getALLUserList()와 큰 차이가 없고 쿼리문만 좀 다릅니다. 
		
		// 1. Connection, PreparedStatement, ResultSet 변수 선언만 해주세요. 
		ResultSet rs =  null ;
		Connection con  = null;
		PreparedStatement pstmt  = null ;
		UserVo user = null ;		// 2. try 블럭 내부에서 DB연결을 해주세요. 필요한 URL ,ID, PW는 상단에 멤버변수로 이미 존재합니다.
		try {
			con = ds.getConnection();
			String sql = "SELECT * FROM userinfo WHERE uid = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,sId);
			
			
			// 3. 쿼리문을 날려서 rs에 DB에 가져온 정보를 받아주세요.

			rs = pstmt.executeQuery();
	
	
		
		
		
		// 4. UserVO변수를 선언해주시고, rs에 저장된 데이터를 UserVO에 담습니다.
			
			if(rs.next()) {
				String uName = rs.getString("uname");
				String uId = rs.getString("uid");
				String uPw = rs.getString("upw");
				String uEmail = rs.getString("uemail");
				user = new UserVo(uName, uId, uPw, uEmail);
			}
			
		// 5. catch, finally 블럭을 작성해주시고 finally에서 자원회수까지 마쳐주세요 
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				// .close() 는 무조건 try 블록 내부에 있어야 한다. 
				con.close();
				pstmt.close();
				rs.close();
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		
		return user ;
	}
	
	// updateCheck에 필요한 userUpdate메서드를 아래에 정의해주세요
	// update구문을 실행하기 때문에 리턴 자료가 필요없다.
	// update_check.jsp에 있는 쿼리문을 실행하기 위해 
	// id pw name email 정보를 모두 받아옵니다. 
	
	public void updateCheck(String id, String pw, String name ,String email) {
		// 접속 로직은 getALLUserList()와 큰 차이가 없고 쿼리문만 좀 다릅니다. 
		
		// 1. Connection, PreparedStatement, ResultSet 변수 선언만 해주세요. 
		Connection con  = null;
		PreparedStatement pstmt  = null ;
		
		
		try {
			con = ds.getConnection();
			String sql = "UPDATE userinfo SET uname = ?, upw=? , uemail = ? WHERE uid = ?" ;
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,name);
			pstmt.setString(2,pw);
			pstmt.setString(3,email);
			pstmt.setString(4,id);
			
			pstmt.executeUpdate();

			
		
		// 5. catch, finally 블럭을 작성해주시고 finally에서 자원회수까지 마쳐주세요 
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				// .close() 는 무조건 try 블록 내부에 있어야 한다. 
				con.close();
				pstmt.close();
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
	
	}
	
	// member_out.jsp에서 사용할 탈퇴기능을 DAO로 이전시키겠습니다.
	// 메서드명은 delteUser(String sId) 입니다.
	// DAO파일에 생성하신 후, member_out.jsp 에서도 해당 메서드를 쓰도록 고쳐주세요

	
	public void memberOut(String id) {
		// 접속 로직은 getALLUserList()와 큰 차이가 없고 쿼리문만 좀 다릅니다. 
		
		// 1. Connection, PreparedStatement, ResultSet 변수 선언만 해주세요. 
		Connection con  = null;
		PreparedStatement pstmt  = null ;
		
		
		try {
			con = ds.getConnection();
			String sql = "DELETE FROM userinfo WHERE uid=?" ;
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,id);
		
			pstmt.executeUpdate();

			
		
		// 5. catch, finally 블럭을 작성해주시고 finally에서 자원회수까지 마쳐주세요 
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				// .close() 는 무조건 try 블록 내부에 있어야 한다. 
				con.close();
				pstmt.close();
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
	
	}
	
	
	// 회원가입 로직 insertUser()를 처리해주세요. 
	public void insertUser(String name, String id ,String pw , String email) {
		Connection con  = null;
		PreparedStatement pstmt  = null ;
		
		
		try {
			con = ds.getConnection();
			String sql = "INSERT INTO userinfo VALUES(?,?,?,?)" ;
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1,name);
			pstmt.setString(2,id);
			pstmt.setString(3,pw);
			pstmt.setString(4,email);
			
			pstmt.executeUpdate();

			
		
		// 5. catch, finally 블럭을 작성해주시고 finally에서 자원회수까지 마쳐주세요 
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				// .close() 는 무조건 try 블록 내부에 있어야 한다. 
				con.close();
				pstmt.close();
				
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
	
	}
	
}
