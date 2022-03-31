package com.ict.controller.di;

import org.springframework.context.support.GenericXmlApplicationContext;

import com.ict.controller.di.classfile.BalladSinger;
import com.ict.controller.di.classfile.Broadcast;
import com.ict.controller.di.classfile.Library;
import com.ict.controller.di.classfile.Singer;
import com.ict.controller.di.classfile.Stage;

public class DIMainSpringver {

	public static void main(String[] args) {
		// root-context라는 공장에 저장된 객체를 뽑아서  써야한다.
		
		String[] address = {"file:src/main/webapp/WEB-INF/spring/root-context.xml" , "file:src/main/webapp/WEB-INF/spring/root-context2.xml"};
		GenericXmlApplicationContext context = 
				new GenericXmlApplicationContext(address);
	
		
		/*
		
		// 1. 가져오기 위한 호출코드
		GenericXmlApplicationContext context = 
				new GenericXmlApplicationContext("file:src/main/webapp/WEB-INF/spring/root-context.xml");
		
		//2. 공장 내부 객체 가져오기 
		
		//context.getBeans("공장 내부 명칭 " , 클래스파일명.class);
		
		//Singer singer = context.getBean("singer", Singer.class);
		
		// 3. 가져온 객체 사용하기
		//singer.sing();
	
		// 멤버 변수가 하나면 알아서 singer를 가져와서 사용한다.
		// 4. 직접 Stage를 가져다가 실행시키는 코드
		//Stage stage = context.getBean("stage", Stage.class);

		// 5. Broadcast 호출
		//Broadcast broadcast = context.getBean("broadcast", Broadcast.class);
		
		//broadcast.onAir() ;
	
		// 6. BalladSinger 직접 실행
		
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
