package com.ict.controller.di.classfile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Library {

	
	// Library Book�� �����ϴ� ���·� ������ּ���.
	// ��, �����ڴ� void ������(�ƹ��͵� �Է¹��� �� ���� �ƹ��͵� �� �ϴ�)���·� �����
	// ������� Book�� ���� setter�� ������ּ���. (public void setBook(Book book))
	
	static Book book ;
	
	public Library() {
		// �ƹ��͵� �� �ϴ� ������.
	}
	
	// ������� Book�� ���� setter�� �����
	@Autowired
	public void setBook(Book book) {
		this.book = book;
		
	}
	
	
	
	// ������� Book�� �̿��� "���������� å�� �н��ϴ�." �����ϴ� browse �޼��� ���� 
	public void browse() {
		System.out.print("���������� ");
		book.read();
	}
	
	
}
