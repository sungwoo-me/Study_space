package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// 다형성 원리를 이용해 프론트 컨트롤러가 수행말 명령들을 하나의 타입으로 실행할 수 있도록 도와준다.
public interface iBoardService {
	// 서블릿 내부 메서드와 마찬가지로 request, response 를 사용할 수 있도록 메서드 정의 
	void execute(HttpServletRequest request , HttpServletResponse response);
	
}
