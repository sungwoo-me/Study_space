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
	int visitnum = 0 ;
	boolean gift(int num){
		boolean result =false ;
		if(num %10==0){
			result = true ;
		}
		else result = false ; 
		return result ;
	}
	
	
	%>
	
	<p>페이지 누적 요청수 : <%=++visitnum %> 
	<p>매 10번째 방문자에게는 기프티콘을 드립니다.
	<% 
	if(gift(visitnum)){
	%>
	<p>당첨입니다.</p>
	<%} %>	
	<hr>
	<%	
	int randomNum = (int)(Math.random()*10)+1;
	 %>
	<h1>랜덤 구구단(<%=randomNum %>) </h1>
	<p> 이번에 나온 구구단은 <%=randomNum %>단입니다. </p>
	<%
	for(int i=1;i<10;i++){
	%>
	<p><%=randomNum %>* <%=i %>= <%=randomNum*i %>
	<%} %>	
	
	
	

</body>
</html>