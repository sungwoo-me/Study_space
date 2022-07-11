package com.ict.controller.di;

import com.ict.controller.di.classfile.Book;
import com.ict.controller.di.classfile.Library;
import com.ict.controller.di.classfile.Singer;
import com.ict.controller.di.classfile.Stage;

public class DiMainJavaver {

	public static void main(String[] args) {
		/*
		// 가수, 무대를 생성한 다음
		Singer singer = new Singer();
		Stage stage = new Stage(singer);
		
		// 무대의 공연(perform)메서드를 호출해주세요.
		stage.perform();
		// 그냥 가수가 노래하는것도 가능하지 테스트해주세요.
		singer.sing();
		*/
		// 기존 자바에서는 Book, Library를 둘 다 생성해야 실행 가능
		Book book = new Book();
		//Library library = new Library(book);// 생성자 주입이 가능할때는 생성하면서 book을 Library에 넣으면 됨
		Library library = new Library(); // 아무 동작도 하지 않는 Library의 생성자
		library.setBook(book);//멤버변수 book채우기
		library.browse();
	
	}
}