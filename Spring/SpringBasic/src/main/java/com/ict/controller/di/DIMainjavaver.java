package com.ict.controller.di;

import com.ict.controller.di.classfile.Singer;
import com.ict.controller.di.classfile.Stage;

public class DIMainjavaver {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ���� ���븦 ����
		
		Singer woo = new Singer();
		Stage home = new Stage(woo);
		
		
		//������ ���� �޼��带 ȣ�����ּ���
		
		home.perform();
		
		woo.sing();
	}

}
