package com.ict.controller.di.classfile;

import org.springframework.stereotype.Component;

@Component
public class BalladSinger extends Singer {

	// Singer �� ����ϰ� sing()�� �������̵��ؼ�
	// �߶�� ������ �뷡�� �θ���. 
	
	@Override
	
	public void sing() {
		System.out.println("�߶�� ������ �뷡�� �մϴ�. ");
	}
	
	
}
