package com.ict.controller.di.classfile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Library {

	
	// Library Book에 의존하는 상태로 만들어주세요.
	// 단, 생성자는 void 생성자(아무것도 입력받지 아 ㄶ고 아무것도 안 하는)상태로 만들기
	// 멤버변수 Book에 대한 setter만 만들어주세요. (public void setBook(Book book))
	
	static Book book ;
	
	public Library() {
		// 아무것도 안 하는 생성자.
	}
	
	// 멤버변수 Book에 대한 setter만 만들기
	@Autowired
	public void setBook(Book book) {
		this.book = book;
		
	}
	
	
	
	// 멤버변수 Book을 이용해 "도서관에서 책을 읽습니다." 실행하는 browse 메서드 생성 
	public void browse() {
		System.out.print("도서관에서 ");
		book.read();
	}
	
	
}
