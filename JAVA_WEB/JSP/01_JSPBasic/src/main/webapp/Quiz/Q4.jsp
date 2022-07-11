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
	double celcius = -5.0;
	double Ctof(double num1){
		return (num1*1.8)+32 ;
	}
	%>
	
	

	<h3>오늘 현재 동교동 온도</h3>
	<p> 섭씨 온도 : <%= celcius %></p> 
	<p> 화씨 온도 : <%= Ctof(celcius) %> </p>
</body>
</html>