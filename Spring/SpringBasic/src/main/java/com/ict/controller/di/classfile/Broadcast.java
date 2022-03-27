package com.ict.controller.di.classfile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Broadcast {

	//Stage�� �����ϵ��� ����
	@Autowired
	private Stage stage;
	
	public Broadcast() {}

	
	public Broadcast(Stage stage) {
		this.stage = stage;
	}
	
	public void onAir() {
		System.out.print("��� �������� ");
		stage.perform();
	}
	
}
