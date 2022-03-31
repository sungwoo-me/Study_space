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
		// ���� ���븦 ����
		
		Singer woo = new Singer();
		Stage home = new Stage(woo);
		
		
		//������ ���� �޼��带 ȣ�����ּ���
		
		home.perform();
		
		woo.sing();
		*/
		
		Book book = new Book();
		
		Library library = new Library();
		
		// @Autowired �� 1. ��� ���� �� , 2.������ �� , 3. setter���� ���� �� �ִ�. 
		library.setBook(book);
		
		library.browse();
		
		
		
		
	}

}
