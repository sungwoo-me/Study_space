package com.ict.controller.di;

import org.springframework.context.support.GenericXmlApplicationContext;

import com.ict.controller.di.classfile.BalladSinger;
import com.ict.controller.di.classfile.Broadcast;
import com.ict.controller.di.classfile.Library;
import com.ict.controller.di.classfile.Singer;
import com.ict.controller.di.classfile.Stage;

public class DIMainSpringver {

	public static void main(String[] args) {
		// root-context��� ���忡 ����� ��ü�� �̾Ƽ�  ����Ѵ�.
		
		String[] address = {"file:src/main/webapp/WEB-INF/spring/root-context.xml" , "file:src/main/webapp/WEB-INF/spring/root-context2.xml"};
		GenericXmlApplicationContext context = 
				new GenericXmlApplicationContext(address);
	
		
		/*
		
		// 1. �������� ���� ȣ���ڵ�
		GenericXmlApplicationContext context = 
				new GenericXmlApplicationContext("file:src/main/webapp/WEB-INF/spring/root-context.xml");
		
		//2. ���� ���� ��ü �������� 
		
		//context.getBeans("���� ���� ��Ī " , Ŭ�������ϸ�.class);
		
		//Singer singer = context.getBean("singer", Singer.class);
		
		// 3. ������ ��ü ����ϱ�
		//singer.sing();
	
		// ��� ������ �ϳ��� �˾Ƽ� singer�� �����ͼ� ����Ѵ�.
		// 4. ���� Stage�� �����ٰ� �����Ű�� �ڵ�
		//Stage stage = context.getBean("stage", Stage.class);

		// 5. Broadcast ȣ��
		//Broadcast broadcast = context.getBean("broadcast", Broadcast.class);
		
		//broadcast.onAir() ;
	
		// 6. BalladSinger ���� ����
		
		//BalladSinger balladSinger = context.getBean("balladSinger", BalladSinger.class);
		//balladSinger.sing();
		
		Stage stage1 = context.getBean("stage1", Stage.class);
		stage1.perform();
		Stage stage2 = context.getBean("stage2", Stage.class);
		stage2.perform();
		
		*/
	
		Library library = context.getBean("library1", Library.class);
		library.browse();
	}

}
