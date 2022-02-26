<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Integer> lotto = new ArrayList<>();
	while(true){
		int rn = (int)(Math.random() *45) +1 ;
		if(!lotto.contains(rn)){
			lotto.add(rn);
		}
		if(lotto.size() ==6){
			break;
		}
	}
	Collections.sort(lotto);
	%>
	
	<h1>로또번호 생성 결과 </h1>
	<p>이번주 로또는 이 번호다 !!! </p>
	<p>
	<%
		for(Integer num : lotto){
			out.println(num + "&nbsp;");
			Thread.sleep(700); // 잠깐 쉬기 
			out.flush(); // 중간에 뿌려주기 
		}
	%>
	<br/>
	List&lt; Integer&gt; 를 사용 . 
	</p>
</body>
</html>