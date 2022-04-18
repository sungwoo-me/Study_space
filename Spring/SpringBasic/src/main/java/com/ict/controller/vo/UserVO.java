package com.ict.controller.vo;

import lombok.Data;

// 가상의 회원 관리용 VO 
@Data // lombok의 @Data는 해당 VO의 세터 개터 생성자 toString 자동 생성
// lombok사용하기 위해서는 lombok 설치 -> pom.xml에 lombok관련 셋팅 하기 
public class UserVO {
	// 유저 테이블 컬럼 5개에 대응하는 VO
	private int userNum;
	private String userId;
	private String userPw;
	private String userName;
	private int userAge;
}

