package com.ict.controller.di.classfile;

import org.springframework.stereotype.Component;

@Component
public class BalladSinger extends Singer {

	// Singer 를 상속하고 sing()을 오버라이딩해서
	// 발라드 가수가 노래를 부른다. 
	
	@Override
	
	public void sing() {
		System.out.println("발라드 가수가 노래를 합니다. ");
	}
	
	
}
