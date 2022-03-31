package com.ict.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 어노테이션에 네 종류가 있었는데(@Component, @Repository, @Controller, @Service)
// 컨트롤러를 만드는 경우이니 당연히 @Controller를 씁니다.
@Controller
public class BasicController {
	
	// RequestMapping의 value는 localhost:8181/어떤주소 로 접속시 해당 로직이 실행될지 결정합니다.
	// 아무것도 안 적으면 기본적으로 get방식을 허용합니다.
	@RequestMapping(value="/goA")
	// 아래에 해당 주소로 접속시 실행하고 싶은 메서드를 작성합니다.
	public String goA() {
		System.out.println("goA 접속이 감지되었습니다.");
		// return "goA"; 라고 적으면 views폴더 내부의 goA.jsp파일을 보여줍니다.
		return "goA";
	}
	
	// /goB로 접속했을때 b.jsp 창이 열리도록 아래에 세팅해주세요.
	@RequestMapping(value="/goB")
	public String go(){
		return "b";
	}
	
	// 여러분들의 성함 성씨 기준(강사 기준 : "/chae") 으로 패턴을 잡고
	// 결과 페이지는 "XXX의 페이지 입니다." 라는 문장이 뜨도록 처리해서 메서드와 어노테이션을 저에게 보내주세요.
	@RequestMapping(value="/chae")
	public String jong() {
		return "hun";
	}
	
	// 외부에서 전송하는 데이터는 메서드 선언부에 선언된 변수로 받습니다.
	// 이름만 일치하면 알아서 받아옵니다.
	// 자료형을 신경쓸 필요가 없습니다.
	@RequestMapping(value="/getData" , method = RequestMethod.POST)//localhost:8181/getData
					// /getData?data1=abcd&data2=데이터2 에 해당하는요소를 받아옵니다.
	public String getData(String data1, int data2, Model model) {
		//String data1 = request.getParameter("data1"); //jsp때 데이터를 받아오는 방법
		//int data2 = Integer.parseInt(strData2); // jsp에서 받아온 데이터를 다른 자료형으로 변환하는 방법
		System.out.println("data1에 든 값 : " + data1);
		System.out.println("data2에 든 값 : " + data2);
		System.out.println("data2가 정수임을 증명 : " + (data2+100));
		
		
		// data1, data2 변수를 getResult.jsp로 보내서 콘솔메세지를 화면에서 조회가능하게 해주세ㅛㅇ.
		model.addAttribute("data1", data1);
		model.addAttribute("data2", data2);
		
		return "getResult";
	}
	
	// 외부에서 전송하는 데이터를 /getMoney 주소로 받아오겠습니다.
	// 이 주소는 int won 이라는 형식으로 금액을 받아서
	// 환율에 따른 환전금액을 콘솔에 찍어줍니다. 환전화폐는 임의로 정해주세요.
	// 결과페이지는 exchange.jsp 로 하겠습니다.
	// 메서드명은 임의로 만들어주세요.
	@RequestMapping(value="/getMoney" , method = RequestMethod.POST)// post 방식으로만 받도록 처리 
	
	// 포워딩시 바인딩을 하고 싶다면 Model 을 선언한다. 
	public String mExchange(int won, Model model ) {
		System.out.println("입력한 금액은 " + won  + "원입니다.");
		System.out.println("현재 바트화 환율은 36.16원당 1바트입니다.");
		System.out.println("입력한 금액에 따른 환전금액은 " + (won / 36.16) + "바트입니다.");
		// model.addAttribute("보낼이름" , 보낼 자료) ;
		// 넘어간 데이터는 .jsp 파일에서 el을 이용해서 출력한다.
		// ex -> model.addAttribute("test", 자료); 로 바인딩한 경우 
		// ${test} 로 .jsp에서 출력 가능 
		model.addAttribute("money", won);
		model.addAttribute("money2", (won / 36.16));

		return "exchange";
	}
	
	
	// form 페이지와 결과페이지 분리하기
	// 목적지 주소가 .jsp 기준이 아닌 @RequestMapping상의 주소 기준으로 간다.
	// 주소 moneyForm 으로 연결되도록 아래 어노테이션 + 메서드 구성하기
	// moneyForm.jsp로 연결된다.
	// moneyForm.jsp에는 목적지를 #으로 하고 name=won인 폼 추가로 만들기 
	
	@RequestMapping(value="/moneyForm")
	public String moneyForm(){
		return "moneyForm";
	}
	
	// 상단 /getData 주소를 타겟으로 하는 /dataForm 을 만들기
	// data1, data2를 자료형에 맞게 폼으로 입력받아 전송 버튼 누르면 해당 데이터가 결과에 나오도록
	
	
	@RequestMapping(value="/getdataForm")
	public String getDataForm(){
		return "getDataForm";
	}

	@GetMapping(value="/onlyGet")
	public String onlyGet() {
		return "onlyGet";
	}
	@PostMapping(value="/onlyPost")
	public String onlyPost() {
		return "onlyPost";
	}
	
	
	@GetMapping(value="/score")
	public String scoreForm(){
		return "scoreForm";
	}
	
	@PostMapping(value="/score")
	public String scoreresult(int score1, int score2, int score3, int score4, int score5 ,Model model) {
		model.addAttribute("score1",score1);
		model.addAttribute("score2",score2);
		model.addAttribute("score3",score3);
		model.addAttribute("score4",score4);
		model.addAttribute("score5",score5);
		int total = score1+score2+score3+score4+score5;
		double avg = total/5 ;
		model.addAttribute("total",total);
		model.addAttribute("avg",avg);
		
		return "scoreResult";
	}
	
	
}
