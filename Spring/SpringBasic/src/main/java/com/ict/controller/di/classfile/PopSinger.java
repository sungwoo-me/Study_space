package com.ict.controller.di.classfile;

import org.springframework.stereotype.Component;

@Component

public class PopSinger extends Singer{

	
	@Override
	public void sing() {
		System.out.println("�� ������ �뷡�� �մϴ�. ");
	}	
}
