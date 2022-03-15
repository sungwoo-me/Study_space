package kr.co.ict;

public class UserVo {
	// VO는 특정 테이블의 자료를 자바 형식으로 저장하기 위해선언합니다. 
	// 그래서 SQL 데이터를 자바로 옮겨오기 위해서
	
	
	// 1. 담당할 테이블의 컬럼을 전부 변수로 만듭니다.
	
	private String uName ;
	private String uId ;
	private String uPw ;
	private String uEmail;
	
	// 2. 생성자 게터 세터 생성자 만들기 

	public UserVo(String uName, String uId, String upw, String uEmail) {
		super();
		this.uName = uName;
		this.uId = uId;
		this.uPw = upw;
		this.uEmail = uEmail;
	}

	
	public String getuName() {
		return uName;
	}


	public void setuName(String uName) {
		this.uName = uName;
	}


	public String getuId() {
		return uId;
	}


	public void setuId(String uId) {
		this.uId = uId;
	}


	public String getuPw() {
		return uPw;
	}


	public void setUpw(String upw) {
		this.uPw = upw;
	}


	public String getuEmail() {
		return uEmail;
	}


	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}




	


	// 3. (선택) toSTring을 만든다. 
	@Override
	public String toString() {
		return "UserVo [uName=" + uName + ", uId=" + uId + ", uPw=" + uPw + ", uEmail=" + uEmail + "]";
	}
	
}
