package com.ict.controller.di.classfile;

import org.springframework.stereotype.Component;

// @Component
public class Singer {
	
	// 가수는 무대가 있건 없건 노래 가능
	// 다른 어떤 요소 없이 노래 기능도 가능 

	
	public void sing() {
		System.out.println("가수가 노래를 한다. ");
	}
}
