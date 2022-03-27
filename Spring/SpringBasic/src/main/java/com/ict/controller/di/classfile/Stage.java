package com.ict.controller.di.classfile;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class Stage {
	// ����� ������ �־�� �����ϸ�, �׶��׶� �ٸ� ������ ������� �ֽ��ϴ�.
	
	// @Autowired�� �Է½� �ش� �ڷ����� ��ġ�ϴ� ��ǰ�� ���� ���� �����ϸ� �ڵ����� �������ݴϴ�.
	// ���� ��, ������ �� �� �ϳ��� ���ø� �˴ϴ�.
	// @Autowired�� @Inject�� ��ü�� �� �ֽ��ϴ�.
	//@Autowired
	//@Inject
	//@Qualifier("popSinger")
	private Singer singer;// ���� �������
	
	// 4�������� @Autowired ���� �ƹ� �۾��� ���� �ʴ� ����Ʈ �����ڰ� �߰��Ǿ�� �մϴ�.
	// 5���������� @Qualifier ������̼� ���ô� ����Ʈ �����ڰ� �ʿ��մϴ�.
	public Stage() {}
	
	public Stage(Singer singer) {
		this.singer = singer;// ���뿡 �� ������ �Է��ؾ� �����ڰ� ȣ��ǵ��� ó��
	}
	
	public void perform() {
		System.out.print("���뿡�� ");
		this.singer.sing();
	}
	
}
