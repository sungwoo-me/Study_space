<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
	public int total = 0 ;
	
	int randomNumber(){
		int result = (int)(Math.random()*10 )+1;
		return result ;
	}
	
	String randomColor(){
		int num = (int)(Math.random()*3 )+1;
		String color ;
		if(num==1){
			color = "빨강";
		}
	
		else if(num==2){
			color = "노랑";
		}
		
		else{
			color = "파랑";
		}
		return color ;
	}
%>
	<h3> 오늘의 행운의 숫자와 행운의 색깔 </h3>
	<p>행운의 숫자는 1~10범위 </p>
	<p>행운의 숫자 : <b><%=randomNumber() %> </b></p>
	<p>색깔은 1/3확률로 바뀐다. (빨강, 노랑, 파랑)</p>
	<p>행운의 색깔 :  <b><%=randomColor() %> 색깔 </b>
	<h3>오늘의 방문자 수 </h3>
	<%
		out.println(++total);
		int currentNum = 0 ;
		out.println("<br/>");
		out.println(++currentNum);
	
	%>
	
	
	
	
	
	
	<!--
	declaration 에 선언한 변수는 서버를 끄기 전까지 값이 누적된다.
	그냥 선언한 변수는 새로 고침 마다 초기화 된다. 
	-->
	 
</body>
</html>