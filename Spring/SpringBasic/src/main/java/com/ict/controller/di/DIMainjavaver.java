package com.ict.controller.di;

import org.springframework.beans.factory.annotation.Autowired;

import com.ict.controller.di.classfile.Book;
import com.ict.controller.di.classfile.Library;
import com.ict.controller.di.classfile.Singer;
import com.ict.controller.di.classfile.Stage;

public class DIMainjavaver {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*
		// 가수 무대를 생성
		
		Singer woo = new Singer();
		Stage home = new Stage(woo);
		
		
		//무대의 공연 메서드를 호출해주세요
		
		home.perform();
		
		woo.sing();
		*/
		
		Book book = new Book();
		
		Library library = new Library();
		
		// @Autowired 는 1. 멤버 변수 위 , 2.생성자 위 , 3. setter위에 붙일 수 있다. 
		library.setBook(book);
		
		library.browse();
		
		
		
		
	}

}
