package com.ict.controller.di;

import com.ict.controller.di.classfile.Singer;
import com.ict.controller.di.classfile.Stage;

public class DIMainjavaver {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 가수 무대를 생성
		
		Singer woo = new Singer();
		Stage home = new Stage(woo);
		
		
		//무대의 공연 메서드를 호출해주세요
		
		home.perform();
		
		woo.sing();
	}

}
