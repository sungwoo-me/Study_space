<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("이름");
	int weight = Integer.parseInt(request.getParameter("체중"));
	double height = Double.parseDouble(request.getParameter("키"))/100;

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	double bmi = (weight / (height * height)) ;
	%>
	
	<h1>BMI 지수 계산 </h1>
	
	<p> 이름 : <%=name %>  <br/></p>
	<p> 키 : <%=height %>  <br/></p>
	<p> 몸무게 : <%=weight %> <br/></p>
	<p> BMI 지수 : <%=bmi %> <br/></p>
	<% if (bmi >23) { %>
			<p> 체중을 고려하세요 </p>
	
	<%} else if (bmi < 18.5) { %>
			<p> 저체중입니다.  </p>
	<%} else{ %>
			<p> 정상 체중입니다. 	
		
	<%} %>	
	
	
	
</body>
</html>